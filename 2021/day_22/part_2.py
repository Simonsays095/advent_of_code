from __future__ import annotations
from os import close
from typing import Set
import cProfile
import itertools
import numpy as np
# import matplotlib.pyplot as plt
np.set_printoptions(linewidth=150, suppress=True)


class Cuboid:
    def __init__(self, minx: int, maxx: int, miny: int, maxy: int, minz: int, maxz: int):
        assert minx <= maxx and miny <= maxy and minz <= maxz, "Lower bounds must be no greater than upper bounds."
        self.minx = minx
        self.maxx = maxx
        self.miny = miny
        self.maxy = maxy
        self.minz = minz
        self.maxz = maxz

    def __repr__(self):
        return f"<Cuboid x={self.minx}..{self.maxx} y={self.miny}..{self.maxy} z={self.minz}..{self.maxz}>"

    def __key(self):
        return (self.minx, self.maxx, self.miny, self.maxy, self.minz, self.maxz)

    def __eq__(self, other: Cuboid):
        return self.__key() == other.__key()

    def __hash__(self):
        return hash(self.__key())

    def Intersect(self, other: Cuboid) -> Cuboid:
        '''
        Returns a cuboid or None, representing the intersection of these 2 cuboids
        '''
        if not self.Overlaps(other):
            return None

        minx = max(self.minx, other.minx)
        maxx = min(self.maxx, other.maxx)
        miny = max(self.miny, other.miny)
        maxy = min(self.maxy, other.maxy)
        minz = max(self.minz, other.minz)
        maxz = min(self.maxz, other.maxz)
        return Cuboid(minx, maxx, miny, maxy, minz, maxz)

    def Subtract(self, other: Cuboid) -> Set[Cuboid]:
        '''
        Returns a set of cuboida representing the points in self that aren't in Cuboid other.
        Similar to a set difference.
        '''
        if not self.Overlaps(other):
            return {self}
        if self == other:
            return set()

        # Iteratively subdivide from faces in other
        res = {self}
        for coord, axis, inside in other.Faces():
            if inside == -1: inside = 0  # TODO: Make these functions mesh better
            # res = set(itertools.chain.from_iterable(cuboid.Subdivide(coord, axis, inside) for cuboid in res))
            newres = set()
            for cuboid in res:
                newres = newres.union(cuboid.Subdivide(coord, axis, inside))
            res = newres

        # Remove the cuboid that looks like other intersected with self
        both = self.Intersect(other)
        res.remove(both)
        return MergeCuboids(res)

    def Subdivide(self, coord: int, axis: int, boundary: int = 1) -> Set[Cuboid]:
        '''
        Splits the cuboid in half along a specified, if the cuboid is intersected by that plane.
        Otherwise, returns self. Boundary specified which side keeps the points in the plane,
        1 indicates the cuboid in higher coordinates, whereas 0 indicates the cuboid in lower coords.
        '''
        # Handle non-intersection cases
        if axis == 0 and not self.minx <= coord <= self.maxx:
            return {self}
        if axis == 1 and not self.miny <= coord <= self.maxy:
            return {self}
        if axis == 2 and not self.minz <= coord <= self.maxz:
            return {self}

        offset = {
            0: +1,
            1: -1
        }

        # Split the cube, leaving out the plane itself
        low_bounds = [[self.minx, self.maxx], [self.miny, self.maxy], [self.minz, self.maxz]]
        high_bounds = [[self.minx, self.maxx], [self.miny, self.maxy], [self.minz, self.maxz]]
        bounds = [low_bounds, high_bounds]
        bounds[0][axis][1] = coord - 1
        bounds[1][axis][0] = coord + 1

        bounds[boundary][axis][1-boundary] += offset[boundary]

        # Check for validity of bounds and create cuboids
        cuboids = set()
        for bound in bounds:
            bad_bounds = False
            for axis in range(3):
                if bound[axis][0] > bound[axis][1]:
                    bad_bounds = True
                    break
            if not bad_bounds:
                cuboids.add(Cuboid(bound[0][0], bound[0][1], bound[1][0], bound[1][1], bound[2][0], bound[2][1]))
        return cuboids

    def Faces(self):
        '''
        Returns the x/y/z coordinate of each face, as well as the axis label
        and the direction along that axis that points inside the cell (+/-1)
        '''
        yield self.minx, 0, 1
        yield self.maxx, 0, -1
        yield self.miny, 1, 1
        yield self.maxy, 1, -1
        yield self.minz, 2, 1
        yield self.maxz, 2, -1

    def Vertices(self):
        yield self.minx, self.miny, self.minz
        yield self.minx, self.miny, self.maxz
        yield self.minx, self.maxy, self.minz
        yield self.minx, self.maxy, self.maxz
        yield self.maxx, self.miny, self.minz
        yield self.maxx, self.miny, self.maxz
        yield self.maxx, self.maxy, self.minz
        yield self.maxx, self.maxy, self.maxz

    def Add(self, other: Cuboid) -> Set[Cuboid]:
        '''
        Returns a set of cuboids representing the set addition of the regions inside each cuboid.
        Can be multiple cuboids since the shape can get more complex as more regions are added.
        '''
        if not self.Overlaps(other):
            return {self, other}

        # Remove the intersection
        both = self.Intersect(other)
        res = other.Subtract(both)

        # Return their union (self + other's unique parts)
        res.add(self)
        return MergeCuboids(res)

    def Overlaps(self, other: Cuboid, buffer: int = 0) -> bool:
        '''
        Returns True if some integer lattice points are in common between self and other.
        '''
        # self is below other
        if self.maxx < other.minx + buffer or self.maxy < other.miny + buffer or self.maxz < other.minz + buffer:
            return False

        # self is above other
        if self.minx + buffer > other.maxx or self.miny + buffer > other.maxy or self.minz + buffer > other.maxz:
            return False

        return True

    def Expanded(self, amount) -> Cuboid:
        return Cuboid(self.minx-amount, self.maxx+amount, self.miny-amount, self.maxy+amount, self.minz-amount, self.maxz+amount)

    def Volume(self):
        return (self.maxx - self.minx + 1) * (self.maxy - self.miny + 1) * (self.maxz - self.minz + 1)


def MergeCuboids(cuboids: Set[Cuboid]) -> Set[Cuboid]:
    '''
    Recursively merge cuboids until no more cuboids share a face
    '''
    # cuboids = list(cuboids)  # To iterate over pairs
    did_merge = False
    res = set()
    while len(cuboids) > 0:
        cub = cuboids.pop()
        merged_cuboids = set()
        for other in cuboids:
            merged = Merge2Cuboids(cub, other)
            # If actually merged, update cub and remove other from cuboids
            if len(merged) == 1:
                cub = merged.pop()
                merged_cuboids.add(other)
                did_merge = True
                break
        cuboids -= merged_cuboids
        res.add(cub)
    if did_merge:
        return MergeCuboids(res)  # Recursive merging
    return res


def Merge2Cuboids(cuboidA: Cuboid, cuboidB: Cuboid) -> Set[Cuboid]:
    '''
    If both cuboids share a face, merge and return the merged cuboid.
    Always returns a set of 1 or 2 cuboids.
    '''
    # Check if they're close to each other first
    expanded = cuboidA.Expanded(1)
    if not expanded.Overlaps(cuboidB):
    # if not cuboidA.Overlaps(cuboidB, 1):
        return {cuboidA, cuboidB}
    boundsA = [[cuboidA.minx, cuboidA.maxx], [cuboidA.miny, cuboidA.maxy], [cuboidA.minz, cuboidA.maxz]]
    boundsB = [[cuboidB.minx, cuboidB.maxx], [cuboidB.miny, cuboidB.maxy], [cuboidB.minz, cuboidB.maxz]]
    for faceA, axisA, inA in cuboidA.Faces():
        for faceB, axisB, inB in cuboidB.Faces():
            # Check if faces are touching
            # A lower than B
            if faceA == faceB - 1 and axisA == axisB and inA == -1 and inB == +1:
                # Check if these touching faces have the same size
                same_size = True
                for axis in range(3):
                    if axis == axisA: continue
                    if not boundsA[axis][0] == boundsB[axis][0] or not boundsA[axis][1] == boundsB[axis][1]:
                        same_size = False
                if same_size:
                    for i in range(3):
                        boundsA[i][0] = min(boundsA[i][0], boundsB[i][0])
                        boundsA[i][1] = max(boundsA[i][1], boundsB[i][1])
                    boundsB = None

            # B lower than A
            if faceA == faceB + 1 and axisA == axisB and inA == +1 and inB == -1:
                same_size = True
                for axis in range(3):
                    if axis == axisA: continue
                    if not boundsA[axis][0] == boundsB[axis][0] or not boundsA[axis][1] == boundsB[axis][1]:
                        same_size = False
                if same_size:
                    for i in range(3):
                        boundsA[i][0] = min(boundsA[i][0], boundsB[i][0])
                        boundsA[i][1] = max(boundsA[i][1], boundsB[i][1])
                    boundsB = None
    if boundsB is None:
        return {Cuboid(boundsA[0][0], boundsA[0][1], boundsA[1][0], boundsA[1][1], boundsA[2][0], boundsA[2][1])}
    else:
        # No merging
        return {cuboidA, cuboidB}


def MergeTogether(setA: Set[Cuboid], setB: Set[Cuboid]):
    print(f"Merging cuboids sets of size {len(setA)} and {len(setB)}")
    # Arrange sets by length
    if len(setA) >= len(setB):
        big_set, small_set = setA, setB
    else:
        big_set, small_set = setB, setA

    # Combine cuboids, keeping track of which cuboids changed in the larger set
    combined = set()
    changed = set()
    while len(small_set) > 0:
        cub = small_set.pop()
        cur_changed = set()
        for other in big_set:
            merged = Merge2Cuboids(cub, other)
            # If actually merged, update cub and remove other from cuboids
            if len(merged) == 1:
                cub = merged.pop()
                cur_changed.add(other)
        # Remove absorbed cuboids from the big set
        big_set -= cur_changed
        if len(cur_changed) > 0:
            # Add merged cub to changed
            changed.add(cub)
        else:
            # Add cub to combined (no changes)
            combined.add(cub)

    # Add remaining (unchanged) cuboids from big_set to combined
    combined = combined.union(big_set)
    
    if len(changed) > 0:
        return MergeTogether(combined, changed)
    return combined


def main():
    # Parse input
    with open("input", 'r') as f:
        inp = f.read().splitlines()

    on_cuboids = set()
    for idx, line in enumerate(inp):
        state, cuboid = line.split()
        xs, ys, zs = cuboid.split(',')
        minx, maxx = map(int, xs[2:].split('..'))
        miny, maxy = map(int, ys[2:].split('..'))
        minz, maxz = map(int, zs[2:].split('..'))
        cuboid = Cuboid(minx, maxx, miny, maxy, minz, maxz)
        print(state, cuboid)

        # ignore outside of [-50,50] (on any axis, misses region entirely)
        # cuboid = cuboid.Intersect(region)
        # if cuboid is None:
        #     continue  # Outside of the region entirely

        if state == 'on':
            # Add globally unique portion of cuboid to on_cuboids
            cur_cuboids = {cuboid}
            # Find out which cuboids are nearby
            close_cuboids = set(on_cub for on_cub in on_cuboids if cuboid.Overlaps(on_cub, 1))
            on_cuboids -= close_cuboids  # Add back in with other changed cuboids later

            # Add globally unique portion of cuboid to on_cuboids
            for on_cuboid in close_cuboids:
            # for on_cuboid in on_cuboids:
                # Chip away parts that are common to any on_cuboids
                new_cuboids = set()
                for cur in cur_cuboids:
                    new_cuboids = new_cuboids.union(cur.Subtract(on_cuboid))
                cur_cuboids = new_cuboids
            cur_cuboids = cur_cuboids.union(close_cuboids)
            # on_cuboids = on_cuboids.union(cur_cuboids)
            on_cuboids = on_cuboids.union(MergeCuboids(cur_cuboids))
        elif state == 'off':
            # Remove this cuboid from all on cuboids
            new_cuboids = set()
            for cub in on_cuboids:
                new_cuboids = new_cuboids.union(cub.Subtract(cuboid))
            on_cuboids = new_cuboids
        else:
            raise ValueError(f"Unknown state, {state}")
        on = 0
        for cub in on_cuboids:
            # print(cub.Volume())
            on += cub.Volume()
        # on_cuboids = MergeCuboids(on_cuboids)
        print(f"After {idx} operations: {on}, {len(on_cuboids)} cuboids")

if __name__ == "__main__":
    from pstats import SortKey
    cProfile.run('main()', sort=SortKey.TIME)