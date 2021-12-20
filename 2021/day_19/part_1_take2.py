from __future__ import annotations
import enum
import time
import itertools
import functools
import cProfile
import numpy as np
import matplotlib.pyplot as plt
from scipy.spatial.transform import Rotation as R
np.set_printoptions(linewidth=150, suppress=True)

class Facing(enum.Enum):
    UP = enum.auto()
    DOWN = enum.auto()


class Rotation(enum.Enum):
    NORTH = 0
    EAST = 1
    SOUTH = 2
    WEST = 3


# def GetSymmetryRelationship(vecA, vecB):
#     # Flip y-coordinate if they're different
#     print(vecA, vecB)
#     relativeFacing = (vecA[1] == vecB[1])
#     print(f"Facing same vertical direction: ")

class Beacon:
    # def __init__(self, a, b, c):
    def __init__(self, pos):
        # Coords not called x/y/z because orientation is not known
        self.pos = pos
        # self.pos = np.asarray([a,b,c])
        # self.a = a
        # self.b = b
        # self.c = c
        self.idx = None  # Assigned when shared beacons are determined

    def __repr__(self):
        return f"<Beacon: pos={self.pos}, idx={self.idx}>"

    def DistanceTo(self, other: Beacon):
        return np.linalg.norm(self.VectorTo(other))
        # adist = other.a - self.a
        # bdist = other.b - self.b
        # cdist = other.c - self.c
        # return np.sqrt(adist**2 + bdist**2 + cdist**2)

    def VectorTo(self, other: Beacon):
        return other.pos - self.pos
        # adist = other.a - self.a
        # bdist = other.b - self.b
        # cdist = other.c - self.c
        # return [other.a - self.a, other.b - self.b, other.c - self.c]

    def Copy(self):
        # new = Beacon(self.pos[0], self.pos[1], self.pos[2])
        new = Beacon(self.pos)
        new.idx = self.idx  # In case this was changed
        return new

@functools.lru_cache()
def Rotate24():
    rotations = []
    base = np.eye(3, dtype=np.int64)
    for vec1, vec2, vec3 in itertools.permutations(base, 3):
        mat = np.vstack((vec1, vec2, vec3))
        if np.linalg.det(mat) == -1:
            mat[0] *= -1
        # From this permutation, can also negate elements 0/1, 0/2, or 1/2 for valid matrices per permutation
        rotations.append(mat.copy())
        # yield mat
        mat[[0,1]] *= -1
        rotations.append(mat.copy())
        # yield mat
        mat[[1,2]] *= -1
        rotations.append(mat.copy())
        # yield mat
        mat[[0,1]] *= -1
        rotations.append(mat.copy())
        # yield mat
    return rotations

class Scanner:
    @classmethod
    def FromString(cls, scan_str: str):
        scan_str = scan_str.splitlines()
        _, _, idx, _ = scan_str.pop(0).split()
        obj = cls(int(idx))
        obj.beacons = []
        for beacon_pos in scan_str:
            a, b, c = map(int, beacon_pos.split(","))
            obj.beacons.append(Beacon(np.asarray([a, b, c])))
            # obj.beacons.append(Beacon(a, b, c))
        obj.pos = None  # Unknown until Aligned
        return obj

    def __repr__(self):
        return f"<Scanner: idx={self.idx}, num_beacons={len(self.beacons)}, facing={self.facing}, rotation={self.rotation}>"

    def __init__(self, idx, beacons = None):
        self.idx = idx
        self.beacons = beacons
        self.pos = None
        self.facing = None
        self.rotation = None
    
    def GetAllRotations(self, other: Scanner):
        '''
        Returns:
        1) The rotation operation
        2) A copy of the beacons in this new rotation
        '''
        if self.pos is not None and other.pos is not None:
            yield Rotate24(), self.beacons  # Just the identity
        else:
            for idx, rot in enumerate(Rotate24()):

                beacons = [beacon.Copy() for beacon in self.beacons]
                for beacon in beacons:
                    beacon.pos = rot @ beacon.pos
                yield rot, beacons

    def Align_with(self, other: Scanner, starting_idx: int):
        '''
        If possible, set facing/rotation to so that beacons overlap appropriately
        between scanners.

        Check all 24 possible rotations, until one is found where a translation will make 12 or more line up.
        '''
        # First, ignore if scanner positions are known and too far apart
        if self.pos is not None and other.pos is not None:
            diff = other.pos - self.pos
            if not (-2000 <= diff[0] <= 2000 and -2000 <= diff[1] <= 2000 and -2000 <= diff[2] <= 2000):
                print(f"Scanners {self.idx} and {other.idx} are too far apart - skipping")
                return False
        # for rotation, beacons in self.GetAllRotations():
        #     # print(f"Using rotation\n{rotation}")
        #     print(rotation, np.linalg.det(rotation))
        #     continue
        # quit()
        # beacons = self.beacons
        for rot, beacons in self.GetAllRotations(other):
        # for rot in Rotate24():
            for anchor in beacons:
                # anchor_pos = rot @ anchor.pos
                # Use scanner positions to know if anchor is in the overlap - skip if not
                if self.pos is not None and other.pos is not None:
                    to_other = self.pos - other.pos + anchor.pos
                    # to_other = self.pos - other.pos + anchor_pos
                    if not -1000 <= to_other[0] <= 1000 or not -1000 <= to_other[1] <= 1000 or not -1000 <= to_other[2] <= 1000:
                        # print(f"Anchor {anchor.pos} not close enough to other scanner at {other.pos}")
                        continue
                for other_anchor in other.beacons:
                    # Try anchoring these two beacons together
                    # scanner_pos = other_anchor.pos - anchor_pos
                    scanner_pos = other_anchor.pos - anchor.pos
                    # Look for any beacon that, after translation, is within 1000 units from both scanners
                    matching_beacons = [[anchor, other_anchor]]
                    def find_matching_beacons():
                        for beacon in beacons:
                            if beacon is anchor: continue  # Definitely know this one matches
                            # translated = rot @ beacon.pos + scanner_pos
                            translated = beacon.pos + scanner_pos
                            if not -1000 <= translated[0] <= 1000 or not -1000 <= translated[1] <= 1000 or not -1000 <= translated[2] <= 1000:
                                continue
                            for other_beacon in other.beacons:
                                if translated[0] == other_beacon.pos[0] and translated[1] == other_beacon.pos[1] and translated[2] == other_beacon.pos[2]:
                                    matching_beacons.append([beacon, other_beacon])
                                    break
                    find_matching_beacons()
                    if matching_beacons and len(matching_beacons) >= 12:
                        print(f"This anchoring works!!")
                        # 1) Overwrite self.beacons with this new list of beacons
                        # for beacon in self.beacons:
                            # beacon.pos = rot @ beacon.pos
                        self.beacons = beacons

                        # 2) Set the scanner's position
                        self.pos = scanner_pos + other.pos

                        # 3) Set beacon indices.
                        # print(matching_beacons)
                        def update_indices(starting_idx):
                            for self_beacon, other_beacon in matching_beacons:
                                assert self_beacon.idx is None or other_beacon.idx is None or self_beacon.idx == other_beacon.idx, \
                                    f"Uh oh.... Indices {self_beacon.idx} and {other_beacon.idx} don't match, but they're the same beacon...."
                                idx = self_beacon.idx or other_beacon.idx
                                if idx is None:
                                    idx = starting_idx
                                    starting_idx += 1
                                # print(f'Changing {self_beacon.idx} and {other_beacon.idx} to {idx}')
                                self_beacon.idx = idx
                                other_beacon.idx = idx
                            return starting_idx
                        starting_idx = update_indices(starting_idx)

                        # 4) Return True, since we found a match
                        return True

        # No matching symmetry transformation found
        return False


def main():
    # Parse input
    with open("input", 'r') as f:
        inp = f.read()
    inp = inp.split("\n\n")  # Empty line between scanners
    unanchored_scanners = set()
    for scanner_str in inp:
        unanchored_scanners.add(Scanner.FromString(scanner_str))

    # Define one scanner as the "correct direction"
    main = unanchored_scanners.pop()
    main.pos = np.asarray([0,0,0], dtype=np.int64)
    # main.facing = Facing.UP
    # main.rotation = Rotation.NORTH
    # main.idx = 0
    border_scanners = {main}
    scanners = set()  # For all anchored scanners when finished
    beacon_idx = 0
    # print(unanchored_scanners)
    while len(border_scanners) > 0:
        anchored = border_scanners.pop()
        new_anchors = set()
        print(f"  - Finished scanners: {[scanner.idx for scanner in scanners]}")
        print(f"  - Border scanners {anchored.idx} + {[scanner.idx for scanner in border_scanners]}")
        print(f"  - Unanchored scanners: {[scanner.idx for scanner in unanchored_scanners]}")
        print(f"  - Beacons found: {beacon_idx}")

        # Union border and unanchored scanners, to catch possible duplicates in concurrently bordered scanners
        # for border in border_scanners:
        #     # Just look for overlapping points in global space
        #     num_beacons = 0
        #     for beacon in anchored.beacons:
        #         for other in border.beacons:
        #             diff = beacon.pos + anchored.pos - other.pos - border.pos
        #             if diff[0] == 0 and diff[1] == 0 and diff[2] == 0:
        #                 idx = beacon.idx or other.idx
        #                 if idx is None:
        #                     idx = beacon_idx
        #                     beacon_idx += 1
        #                     num_beacons += 1
        #                 beacon.idx = idx
        #                 other.idx = idx
        #     print(f"Found {num_beacons} shared between {anchored.idx} and {border.idx}")
        # for unanchored in unanchored_scanners:
        for unanchored in border_scanners.union(unanchored_scanners):
            if unanchored is anchored: continue  # Skip checking itself
            print(f"Checking scanner {unanchored.idx}")
            aligned = unanchored.Align_with(anchored, beacon_idx)
            if aligned:
                beacon_idx = max(beacon_idx, max([beacon.idx for beacon in unanchored.beacons if beacon.idx is not None]) + 1)
                new_anchors.add(unanchored)
        scanners.add(anchored)
        border_scanners = border_scanners.union(new_anchors)  # Add to the set of border anchors to be checked
        unanchored_scanners -= new_anchors

    # Assign indices to all beacons without an index so far
    for idx, scanner in enumerate(scanners):
        for beacon in scanner.beacons:
            if beacon.idx is None:
                beacon.idx = beacon_idx
                beacon_idx += 1
        print([beacon.idx for beacon in scanner.beacons])
    # print(*[scanner.beacons for scanner in scanners], sep='\n')
    print(beacon_idx)
    print([[scanner.idx, scanner.pos] for scanner in scanners])

    # Create one list of beacons in global space
    beacons = []
    beacon_idxs = set()
    for scanner in scanners:
        for beacon in scanner.beacons:
            if beacon.idx not in beacon_idxs:
                beacon_idxs.add(beacon.idx)
                beacons.append(Beacon(beacon.pos + scanner.pos))
    print(*sorted([beacon.pos for beacon in beacons], key=lambda x: x[0]), sep='\n')


if __name__ == "__main__":
    from pstats import SortKey
    # cProfile.run('Rotate24()', sort=SortKey.TIME)
    cProfile.run('main()', sort=SortKey.TIME)
    # start = time.perf_counter()
    # main()
    # end = time.perf_counter()
    # print(f"Took {end-start} seconds to finish")