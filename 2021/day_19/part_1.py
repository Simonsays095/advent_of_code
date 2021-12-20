from __future__ import annotations
import enum
import numpy as np
import matplotlib.pyplot as plt
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
    def __init__(self, a, b, c):
        # Coords not called x/y/z because orientation is not known
        self.a = a
        self.b = b
        self.c = c
        self.idx = None  # Assigned when shared beacons are determined

    def __repr__(self):
        return f"<Beacon: a={self.a}, b={self.b}, c={self.c}, idx={self.idx}>"

    def DistanceTo(self, other: Beacon):
        adist = other.a - self.a
        bdist = other.b - self.b
        cdist = other.c - self.c
        return np.sqrt(adist**2 + bdist**2 + cdist**2)

    def VectorTo(self, other: Beacon):
        adist = other.a - self.a
        bdist = other.b - self.b
        cdist = other.c - self.c
        return [other.a - self.a, other.b - self.b, other.c - self.c]


class Scanner:
    @classmethod
    def FromString(cls, scan_str: str):
        scan_str = scan_str.splitlines()
        _, _, idx, _ = scan_str.pop(0).split()
        obj = cls(int(idx))
        obj.beacons = []
        for beacon_pos in scan_str:
            a, b, c = map(int, beacon_pos.split(","))
            obj.beacons.append(Beacon(a, b, c))
        obj.pos = None  # Unknown until Aligned
        return obj

    def __repr__(self):
        return f"<Scanner: idx={self.idx}, num_beacons={len(self.beacons)}, facing={self.facing}, rotation={self.rotation}>"

    def __init__(self, idx, beacons = None):
        self.idx = idx
        self.beacons = beacons
        self.facing = None
        self.rotation = None
    
    def Align_with(self, other: Scanner, starting_idx: int):
        '''
        If possible, set facing/rotation to so that beacons overlap appropriately
        between scanners.
        '''
        self_dists = self.DistanceMatrix()
        other_dists = other.DistanceMatrix()

        # potential_shared_beacons = set()
        shared_pairs = set()
        for i, row in enumerate(self_dists):
            for j, elem in enumerate(row[:i]):
                if elem in other_dists:
                    # print(f"distance of {elem} ({i}, {j}) found in both matrices")
                    shared_pairs.add((i,j))
                    # potential_shared_beacons.add((i,j))
        # print(len(potential_shared_beacons))
        # print(potential_shared_beacons)
        # print(len(shared_pairs), "pairs")
        # print(shared_pairs)

        # Each pair of beacons is indeed shared if it is in at least 11 other beacon pairs
        # 11 because we're ignoring the (i,i) pair!
        potential_shared_beacons = set()
        for A, B in shared_pairs:
            # Count occurences of A/B in potential_shared_beacons
            numA = sum([A in pair for pair in shared_pairs])
            if numA >= 11:
                potential_shared_beacons.add(A)
            numB = sum([B in pair for pair in shared_pairs])
            if numB >= 11:
                potential_shared_beacons.add(B)
            # print(f"{A}: {numA}, {B}: {numB}")
        print(potential_shared_beacons, "shared")
        # quit()
        if len(potential_shared_beacons) < 12:
            return False  # Cannot align, not enough overlapping beacons
        
        # Confirm that all pairs of scanner distances are found in the other matrix
        potential_shared_beacons = list(potential_shared_beacons)
        # print(potential_shared_beacons)
        self_dists = self_dists[np.ix_(potential_shared_beacons, potential_shared_beacons)]
        # print(self_dists)

        # print(other_dists)
        shared_beacons = []
        for i, row in enumerate(self_dists):
            # Definitely shared if all n elements in this row are found in the other matrix
            other_compatible = []
            for j, other_row in enumerate(other_dists):
                inOther = np.in1d(row, other_row)
                if all(inOther):
                    other_compatible.append(j)
                    # shared_beacons.append([potential_shared_beacons[i], j])
            # print(other_compatible)
            if len(other_compatible) == 1:
                shared_beacons.append([potential_shared_beacons[i], other_compatible[0]])
            else:
                print(other_compatible)
                quit()
                
        # Update those beacons with an index
        self_anchor_beacons = []
        other_anchor_beacons = []
        print(f"Starting index: {starting_idx}")
        print(f"Shared beacons: {shared_beacons}")
        print("self", [beacon.idx for beacon in self.beacons])
        print("other", [beacon.idx for beacon in other.beacons])
        print(self.idx, other.idx, ((self.idx == 30) and (other.idx == 0)))
        failed = False
        for self_idx, other_idx in shared_beacons:
            self_beacon = self.beacons[self_idx]
            other_beacon = other.beacons[other_idx]
            if len(self_anchor_beacons) < 3:
                self_anchor_beacons.append(self_beacon)
                other_anchor_beacons.append(other_beacon)
            # Sanity check one more time - if both have indices, they have to already be the same
            # assert self_beacon.idx is None or other_beacon.idx is None or self_beacon.idx == other_beacon.idx, \
            #     f"Beacons are the same, but with different indices: {self_beacon} {other_beacon}\n{self.beacons}\n{other.beacons}"
            idx = other_beacon.idx or self_beacon.idx
            if idx is None:
                idx = starting_idx
                starting_idx += 1
            if (self_beacon.idx is not None and other_beacon.idx is not None) or ((self.idx == 30) and (other.idx == 0)):
            # if self_beacon.idx is not None and other_beacon.idx is not None:
                failed = True
                print(f"Overwriting indices {self_beacon.idx} and {other_beacon.idx} with {idx}")
            # print(self_beacon)
            self_beacon.idx = idx
            other_beacon.idx = idx
            # print(self_beacon)
        if failed:
            print(self.DistanceMatrix())
            print()
            print(other.DistanceMatrix())
            quit()

        # # First 2 anchors: set facing/rotation directions
        # self_vec1 = self_anchor_beacons[0].VectorTo(self_anchor_beacons[1])
        # other_vec1 = other_anchor_beacons[0].VectorTo(other_anchor_beacons[1])
        # facing, rotation = GetSymmetryRelationship(self_vec1, other_vec1)
        # print(self_vec1, other_vec1)
        # quit()
        print([beacon.idx for beacon in self.beacons])
        print([beacon.idx for beacon in other.beacons])
        return True
        
        
    def DistanceMatrix(self):
        '''Compute the distance matrix for all beacons detected by the scanner'''
        distanceMat = np.empty((len(self.beacons), len(self.beacons)))
        for i, beaconi in enumerate(self.beacons):
            for j, beaconj in enumerate(self.beacons):
                distanceMat[i,j] = beaconi.DistanceTo(beaconj)
        return distanceMat

def main():
    # Parse input
    with open("input", 'r') as f:
        inp = f.read()
    inp = inp.split("\n\n")  # Empty line between scanners
    scanners = []
    for scanner_str in inp:
        scanners.append(Scanner.FromString(scanner_str))

    # Define main as the "correct direction"
    main = scanners[0]
    main.facing = Facing.UP
    main.rotation = Rotation.NORTH
    main.idx = 0
    beacon_idx = 0
    for i, scanneri in enumerate(scanners):
        for j, scannerj in enumerate(scanners[i+1:]):
            j += i+1 # Bodge
            print(f"Attempting to align scanner {j} to scanner {i}")
            aligned = scannerj.Align_with(scanneri, beacon_idx)
            if aligned:
                # Update beacon idx
                beacon_idx = max(beacon_idx, max([beacon.idx for beacon in scannerj.beacons if beacon.idx is not None]) + 1)
                print(beacon_idx)
            print(f"Aligned: {aligned}")
        if i > 8:
            quit()
    print(*[scanner.beacons for scanner in scanners], sep='\n')
    print()

    # Assign indices to all beacons without an index so far
    for idx, scanner in enumerate(scanners):
        for beacon in scanner.beacons:
            if beacon.idx is None:
                beacon.idx = beacon_idx
                beacon_idx += 1
        print([beacon.idx for beacon in scanner.beacons])
    print(*[scanner.beacons for scanner in scanners], sep='\n')
    print(beacon_idx)


if __name__ == "__main__":
    main()