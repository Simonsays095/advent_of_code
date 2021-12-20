from __future__ import annotations
import itertools
import functools
import cProfile
import numpy as np
import matplotlib.pyplot as plt
np.set_printoptions(linewidth=150, suppress=True)

class Beacon:
    def __init__(self, pos):
        self.pos = pos
        self.idx = None  # Assigned when shared beacons are determined

    def __repr__(self):
        return f"<Beacon: pos={self.pos}, idx={self.idx}>"

    def DistanceTo(self, other: Beacon):
        return np.linalg.norm(self.VectorTo(other))

    def VectorTo(self, other: Beacon):
        return other.pos - self.pos

    def Copy(self):
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
        mat[[0,1]] *= -1
        rotations.append(mat.copy())
        mat[[1,2]] *= -1
        rotations.append(mat.copy())
        mat[[0,1]] *= -1
        rotations.append(mat.copy())
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
        obj.pos = None  # Unknown until Aligned
        return obj

    def __repr__(self):
        ret = f"--- scanner {self.idx} ---\n"
        for beacon in self.beacons:
            ret += f"{beacon.pos[0]},{beacon.pos[1]},{beacon.pos[2]}\n"
        return ret

    def __init__(self, idx, beacons = None):
        self.idx = idx
        self.beacons = beacons
        self.pos = None
    
    def GetAllRotations(self):
        '''
        Returns:
        1) The rotation operation
        2) A copy of the beacons in this new rotation
        '''
        for idx, rot in enumerate(Rotate24()):
            beacons = [beacon.Copy() for beacon in self.beacons]
            for beacon in beacons:
                beacon.pos = rot @ beacon.pos
            yield rot, beacons


def DoesOverlap(beaconsA: list, beaconsB: list, cutoff: int = 12):
    for beaconA in beaconsA:
        for beaconB in beaconsB:
            # Translate so these overlap
            trans = beaconA.pos - beaconB.pos
            # Create a set of translated coordinates for each list of beacons
            # intersect and compare lengths
            beaconsA_coords = set(tuple(beacon.pos) for beacon in beaconsA)
            beaconsB_coords = set(tuple(beacon.pos + trans) for beacon in beaconsB)
            overlap = len(beaconsA_coords.intersection(beaconsB_coords))
            if overlap >= cutoff:
                return trans
    return None


def main():
    # Parse input
    with open("input", 'r') as f:
        inp = f.read()
    inp = inp.split("\n\n")  # Empty line between scanners
    print(len(inp))
    unanchored_scanners = set()
    for scanner_str in inp:
        unanchored_scanners.add(Scanner.FromString(scanner_str))

    # Start with idx==0 at the origin
    main = next(scanner for scanner in unanchored_scanners if scanner.idx == 0)
    unanchored_scanners.remove(main)
    main.pos = np.asarray([0,0,0], dtype=np.int64)

    hot_scanners = {main}
    cold_scanners = set()
    while len(unanchored_scanners) > 0:
        newly_anchored = set()
        for scanner in hot_scanners:
            print(f"Checking for connections to {scanner.idx}")
            # Rotate until match found
            for rot, beacons in scanner.GetAllRotations():
                for other in unanchored_scanners:
                    # print(f" -> {scanner.idx}, {other.idx}")
                    offset = DoesOverlap(beacons, other.beacons)
                    # print(offset)
                    if offset is not None:
                        # Rotate beacons/scanner to align with current scanners
                        rinv = np.linalg.inv(rot)
                        for beacon in other.beacons:
                            beacon.pos = rinv @ beacon.pos

                        offset = rinv @ offset
                        newly_anchored.add(other)
                        other.pos = scanner.pos + offset
                        print(f"  - Scanner {other.idx} is connected to {scanner.idx}, at position {other.pos}")
                        break
                unanchored_scanners -= newly_anchored
        cold_scanners = cold_scanners.union(hot_scanners)
        hot_scanners = newly_anchored
        print(f" - unanchored: {[scanner.idx for scanner in unanchored_scanners]}")
        print(f" - hot: {[scanner.idx for scanner in hot_scanners]}")
        print(f" - cold: {[scanner.idx for scanner in cold_scanners]}")

    scanners = cold_scanners.union(hot_scanners)
    # Count up all unique beacon locations on the map
    coord_sets = [set(tuple(beacon.pos + scanner.pos) for beacon in scanner.beacons) for scanner in scanners]
    coord_sets = set().union(*coord_sets)
    print(len(coord_sets))

    def Manhattan(pos1, pos2):
        return abs(pos1[0]-pos2[0]) + abs(pos1[1]-pos2[1]) + abs(pos1[2]-pos2[2])

    maxdist = 0
    for scanneri in scanners:
        for scannerj in scanners:
            maxdist = max(maxdist, Manhattan(scanneri.pos, scannerj.pos))
    print(maxdist)


if __name__ == "__main__":
    from pstats import SortKey
    cProfile.run('main()', sort=SortKey.TIME)