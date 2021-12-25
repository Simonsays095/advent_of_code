from __future__ import annotations
from typing import Set, List
import numpy as np
import cProfile
from contextlib import contextmanager
import matplotlib.pyplot as plt
from numpy.lib.arraysetops import isin
np.set_printoptions(linewidth=150, suppress=True)


class Block:
    def __init__(self, x, y):
        self.pos = [x,y]
        self.neighbors: Set[Block] = set()
        self.blocktype = "block"  # Shortcut to isinstance?
        self.isFillable = False  # Shortcut to isinstance(block, FillableBlock)?
    
    def Neighbors(self, other: Block, cached: bool = False) -> bool:
        if other in self.neighbors:
            return True
        # Stop here if you just want cached results
        if cached:
            return False

        # Compare positions
        if abs(self.pos[0]-other.pos[0]) == 1 and self.pos[1] == other.pos[1]:
            return True
        if abs(self.pos[1]-other.pos[1]) == 1 and self.pos[0] == other.pos[0]:
            return True
        return False


class Wall(Block):
    def __init__(self, x, y):
        super().__init__(x,y)
        self.blocktype = 'wall'


class FillableBlock(Block):
    def __init__(self, x, y):
        super().__init__(x,y)
        self.occupant: Amphipod = None
        self.blocktype = 'fillable'
        self.isFillable = True

class Hallway(FillableBlock):
    def __init__(self, x, y):
        super().__init__(x,y)
        self.blocktype = 'hallway'


class Room(FillableBlock):
    def __init__(self, x, y):
        super().__init__(x,y)
        self.blocktype = 'room'

    def GetConnectedRooms(self, alreadyKnown: Set[Room] = set()) -> Set[Room]:
        connected = {self}
        check = {self}
        while len(check) > 0:
            block = check.pop()
            for neighbor in block.neighbors:
                if neighbor.blocktype == 'room' and neighbor not in connected:
                    connected.add(neighbor)
                    check.add(neighbor)
        return connected


class Amphipod:
    def __init__(self, block: Block, move_cost: int, map_char: str):
        self.path = [block]
        self.move_cost = move_cost
        self.map_char = map_char
        self.canMoveToHallway: bool = True
        self.destination: int = None

    @contextmanager
    def ApplyMoves(self, moves: tuple[Move]):
    # def AtBlock(self, block: Block):
        for move in moves:
            self.MoveTo(move.block)
        # try:
        # hallwayMovement = self.canMoveToHallway
        # self.MoveTo(block)
        try:
            yield self
        finally:
            for _ in moves:
                self.MoveBack()
            # self.canMoveToHallway = hallwayMovement
    
    @property
    def block(self):
        return self.path[-1]

    def MoveTo(self, block: Block):
        self.path[-1].occupant = None
        self.path.append(block)
        block.occupant = self

    def MoveBack(self):
        assert self.path[-2].occupant is None, f"Moving back to a block that is currently occupied"
        self.path[-2].occupant = self
        block = self.path.pop()
        block.occupant = None

    def OtherPodMoved(self):
        '''
        Signals that this pod has stopped moving, and so rule #3 should take effect
        '''
        if type(self.path[-1]) is Hallway:
            self.canMoveToHallway = False

    def AtDestination(self):
        block = self.path[-1]
        if self.destination != block.pos[0]:
            return False
        # if not isinstance(block, Room):
        if not block.blocktype == 'room':
            return False
        # In the correct column - now check that either
        # 1) It's in the bottom room, or
        # 2) All rooms below it have pods that have reached their destinations
        for room in block.GetConnectedRooms():
            if room is block: continue
            if room.pos[1] > block.pos[1] and (room.occupant is None or not room.occupant.AtDestination()):
                return False
        # for neighbor in block.neighbors:
            # if isinstance(neighbor, Room) and neighbor.pos[1] > block.pos[1]:
            #     if neighbor.occupant is None or not neighbor.occupant.AtDestination():
            #         return False
        return True
                
        # roomNeighbor = next((neighbor for neighbor in self.path[-1].neighbors if isinstance(neighbor, Room)), None)


class Move:
    def __init__(self, pod: Amphipod, block: FillableBlock):
        self.pod = pod
        self.block = block

    def __repr__(self):
        return f"{self.pod.map_char} -> {self.block.__class__.__name__} {self.block.pos}"

def AmphipodFactory(block: Block,type_str: str):
    if type_str == 'A':
        pod = Amphipod(block, 1, type_str)
    elif type_str == 'B':
        pod = Amphipod(block, 10, type_str)
    elif type_str == 'C':
        pod = Amphipod(block, 100, type_str)
    elif type_str == 'D':
        pod = Amphipod(block, 1000, type_str)
    else:
        raise ValueError(f"Amphipod type {type_str} unknown")
    return pod


class Map:
    def __init__(self):
        self.blocks: Set[Block] = set()
        self.pods: Set[Amphipod] = set()

    def AddBlock(self, new: Block):
        # Determine neighbors
        for block in self.blocks:
            if block.Neighbors(new):
                block.neighbors.add(new)
                new.neighbors.add(block)
        self.blocks.add(new)

    def AddAmphipod(self, pod: Amphipod):
        self.pods.add(pod)
        pod.path[-1].occupant = pod

    def Print(self):
        # Get map bounds
        minx = np.inf
        maxx = -np.inf
        miny = np.inf
        maxy = -np.inf
        for block in self.blocks:
            minx = min(block.pos[0], minx)
            maxx = max(block.pos[0], maxx)
            miny = min(block.pos[1], miny)
            maxy = max(block.pos[1], maxy)
        
        # Create map as a list of list of chars
        print_map = [[' ' for _ in range(maxx - minx + 1)] for _ in range(maxy - miny + 1)]
        for block in self.blocks:
            x, y = block.pos
            if block.isFillable and block.occupant is not None:
            # if isinstance(block, FillableBlock) and block.occupant is not None:
                print_map[y][x] = block.occupant.map_char
            else:
                print_map[y][x] = inverseClassMap[type(block)]

        # Overwrite with Amphipod characters
        for pod in self.pods:
            x, y = pod.path[-1].pos
            print_map[y][x] = pod.map_char
        for row in print_map:
            print(''.join(row))

    def Solved(self):
        solved = True
        for pod in self.pods:
            solved = solved and pod.AtDestination()
        return solved

    def GetSolution(self, prevMovedPod: Amphipod = None, steps=np.inf) -> Set[tuple[Move]]:
        '''
        Solve the puzzle, brute forcing our way through all possible moves until the lowest energy solution comes out.
        This is a recursive function, ending when either:
        1) All amphipods are in the correct room, or
        2) There are no more moves.
        '''
        # Get all possible moves from all of the amphipods
        curMoves: Set[tuple(Move)] = set()
        # print(f"Getting solution for starting state:")
        # self.Print()
        for pod in self.pods:
            if pod is prevMovedPod: continue
            podmoves, dest = self.GetPodMoves(pod)
            if dest:
                # Only moves that matter are the ones that bring a pod to the destination, if possible
                curMoves = podmoves
                break
            curMoves = curMoves.union(podmoves)

        if steps <= 1:
            return curMoves

        # For each move, compute all future moves
        moves = set()
        for movelist in curMoves:
            movepod = movelist[0].pod
            with movepod.ApplyMoves(movelist):
                if self.Solved():
                    moves.add(movelist)
                else:
                    nextmoves = self.GetSolution(movepod, steps = steps-1)
                    for nextmove in nextmoves:
                        moves.add(movelist + nextmove)
        return moves

    def GetPodMoves(self, pod: Amphipod, prev_moves: tuple[Move] = tuple()) -> tuple[Set[tuple[Move]], bool]:
        '''
        Look at neighbors to figure out which immediate moves are possible.
        Can give a list of blocks, if compound moves are required (e.g. moving past a doorway)
        '''
        # print(f"Getting moves for pod {pod.map_char} at {pod.block.__class__.__name__} at {pod.block.pos}")
        # self.Print()
        # print(f"Previous moves: {prev_moves}")
        if pod.AtDestination(): return set(), False
        starting_block = pod.path[-len(prev_moves)-1]
        moves = set()
        destmoves = set()
        for neighbor in pod.block.neighbors:
            # Cannot move to neighbor if:
            # 1) It's not fillable
            if not neighbor.isFillable:
            # if not isinstance(neighbor, FillableBlock):
                continue
            # 2) It is fillable but it's not empty,
            if neighbor.occupant is not None:
                continue
            # 3) pod has already visited neighbor in this string of moves
            if neighbor in [move.block for move in prev_moves]:
                continue
            # 4) pod started at neighbor
            if neighbor is starting_block:
                continue
            # neighbor is a room, and pod is in a hallway, and
            if neighbor.blocktype == 'room' and pod.block.blocktype == 'hallway':
            # if isinstance(neighbor, Room) and isinstance(pod.block, Hallway):
                # 6a) neighbor isn't in the pod's destination column
                if neighbor.pos[0] != pod.destination:
                    continue
                # 6b) any block in the current room has a pod that isn't in its destination
                rooms = neighbor.GetConnectedRooms()
                if any(other.occupant is not None and not other.occupant.AtDestination() for other in rooms):
                    continue

            # We can definitely move to this block now. Recursively find later moves
            curMove = (Move(pod, neighbor),)
            with pod.ApplyMoves(curMove):
                if pod.AtDestination():
                    destmoves.add(curMove)
                    continue
                nextMoves, dest = self.GetPodMoves(pod, prev_moves + curMove)
                if dest:
                    for movelist in nextMoves:
                        destmoves.add(curMove + movelist)
                        continue
                else: 
                    for movelist in nextMoves:
                        moves.add(curMove + movelist)
                # See if we can choose to end the turn here
                # Rule: Cannot end a turn in a hallway neighboring a room
                if pod.block.blocktype == 'hallway' and 'room' in [block.blocktype for block in pod.block.neighbors]: continue
                # if isinstance(pod.block, Hallway) and Room in [type(block) for block in pod.block.neighbors]: continue

                # Rule: Cannot end a turn in the upper part of a room if the lower part is unoccupied (optimization)
                if pod.block.blocktype == 'room':
                # if isinstance(pod.block, Room):
                    rooms = pod.block.GetConnectedRooms()
                    if any(other.occupant is None and other.pos[1] > pod.block.pos[1]for other in rooms):
                    # roomNeighbor = next((block for block in pod.block.neighbors if isinstance(block, Room)), None)
                    # if roomNeighbor.pos[1] > pod.block.pos[1] and roomNeighbor.occupant is None:
                        continue

                # Rule: Once a pod stops moving in a hallway, it can only move into a room
                if starting_block.blocktype == 'hallway' and pod.block.blocktype != 'room':
                # if isinstance(starting_block, Hallway) and not isinstance(pod.block, Room):
                    continue

                # Also add the move that ends at this point to the list - choose to stop here
                moves.add(curMove)

        if len(destmoves) > 0:
            return destmoves, True
        else:
            return moves, False
        # # Remove any moves that don't end at the destination if one of the moves DOES end at the destination (optimization)
        # movesToDest = set()
        # for move in moves:
        #     with pod.ApplyMoves(move):
        #         if pod.AtDestination():
        #             movesToDest.add(move)
        # if len(movesToDest) > 0:
        #     return movesToDest, True
        # else:
        #     return moves, False

    @contextmanager
    def AfterMoves(self, moves: tuple[Move]):
        for move in moves:
            move.pod.MoveTo(move.block)
        try:
            yield self
        finally:
            for move in moves[::-1]:
                move.pod.MoveBack()

    def MoveCost(self, moves: tuple[Move]):
        cost = 0
        for move in moves:
            cost += move.pod.move_cost
        return cost

inverseClassMap = {
    Hallway: '.',
    Room: '.',
    Wall: '#',
}

classMap = {
    '.': Hallway,
    '#': Wall,
    'A': Room,
    'B': Room,
    'C': Room,
    'D': Room,
}

destinationMap = {
    'A': 3,
    'B': 5,
    'C': 7,
    'D': 9
}

def main():
    # Parse input
    with open("input2", 'r') as f:
        inp = f.read().splitlines()

    # Parse the map itself.
    # 1) . = position
    # 2) # = wall
    # 3) A/B/C/D = amphopod
    map = Map()
    for y, line in enumerate(inp):
        for x, elem in enumerate(line):
            if elem == ' ': continue
            block = classMap[elem](x,y)
            map.AddBlock(block)
            if elem in ['A', 'B', 'C', 'D']:
                pod = AmphipodFactory(block,elem)
                pod.destination = destinationMap[elem]
                map.AddAmphipod(pod)

    map.Print()
    moves = map.GetSolution()
    print("done")
    print(f"{len(moves)} total solutions!")
    mincost = np.inf
    optimal_solve = None
    for move in moves:
        cost = map.MoveCost(move)
        if cost < mincost:
            mincost = cost
            optimal_solve = move
        with map.AfterMoves(move):
            if not map.Solved():
                print(f"Still need to solve this map:")
                map.Print()
                print()
    print(f"Optimal cost: {mincost}")
    print(optimal_solve)
    cost = 0
    for move in optimal_solve:
        cost += move.pod.move_cost
        print(move, cost)


if __name__ == "__main__":
    # main()
    from pstats import SortKey
    cProfile.run('main()', sort=SortKey.TIME)