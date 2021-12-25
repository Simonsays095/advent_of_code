from typing import Set
import numpy as np
import matplotlib.pyplot as plt
np.set_printoptions(linewidth=150, suppress=True)

class Position:
    def __init__(self):
        self.east: Position = None
        self.south: Position = None
        self.occupant: SeaCucumber = None


class SeaCucumber:
    def __init__(self, pos: Position):
        self.pos = pos


def main():
    # Parse input
    with open("input", 'r') as f:
        inp = f.read().splitlines()
    
    ydim = len(inp)
    xdim = len(inp[0])

    map = [[Position() for _ in range(xdim)] for _ in range(ydim)]

    east_cucs: Set[SeaCucumber] = set()
    south_cucs: Set[SeaCucumber] = set()
    for y, row in enumerate(inp):
        for x, elem in enumerate(row):
            # Connect the positions as we need them
            pos = map[y][x]
            pos.east = map[y][(x+1)%xdim]
            pos.south = map[(y+1)%ydim][x]
            # Add sea cucumbers from input to the map
            if elem == '.':
                continue
            cuc = SeaCucumber(pos)
            pos.occupant = cuc
            if elem == '>':
                east_cucs.add(cuc)
            elif elem == 'v':
                south_cucs.add(cuc)


    # Take turns, keeping track of the index
    turn_idx = 1
    has_moved = 1
    fig, ax = plt.subplots()
    plt.ion()
    fig.show()
    print_map = [[0 for _ in range(xdim)] for _ in range(ydim)]
    im = ax.imshow(print_map, vmin=0, vmax=1)
    while has_moved:
        for y, row in enumerate(map):
            for x, elem in enumerate(row):
                if elem.occupant is not None:
                    if elem.occupant in east_cucs:
                        print_map[y][x] = (255,0,0)
                    elif elem.occupant in south_cucs:
                        print_map[y][x] = (0,255,0)
                else:
                    print_map[y][x] = (0,0,0)
        # print(*[''.join(row) for row in print_map], sep='\n')
        im.set_data(print_map)
        has_moved = 0
        move_cucs: Set[SeaCucumber] = set()
        for cuc in east_cucs:
            # print(cuc.pos.occupant, cuc.pos.east.occupant)
            if cuc.pos.east.occupant is None:
                move_cucs.add(cuc)
        # Move east at once
        for cuc in move_cucs:
            cuc.pos.occupant = None
            cuc.pos = cuc.pos.east
            cuc.pos.occupant = cuc
        has_moved += len(move_cucs)
        
        move_cucs: Set[SeaCucumber] = set()
        for cuc in south_cucs:
            if cuc.pos.south.occupant is None:
                move_cucs.add(cuc)
        # Move south at once
        for cuc in move_cucs:
            cuc.pos.occupant = None
            cuc.pos = cuc.pos.south
            cuc.pos.occupant = cuc
        if len(move_cucs) > 0:
            has_moved = True
        has_moved += len(move_cucs)
        print(f"{has_moved} cucumbers moved on turn {turn_idx}")
        turn_idx += 1
        plt.pause(0.01)
    plt.pause(10)

if __name__ == "__main__":
    import cProfile
    from pstats import SortKey
    cProfile.run('main()', sort=SortKey.CUMULATIVE)