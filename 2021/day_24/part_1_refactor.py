import functools
from typing import List
import multiprocessing as mp
import numpy as np
import matplotlib.pyplot as plt
np.set_printoptions(linewidth=150, suppress=True)


class ALU:
    def __init__(self):
        self.w = 0
        self.x = 0
        self.y = 0
        self.z = 0
        self.input = None

    def reset(self):
        self.w = 0
        self.x = 0
        self.y = 0
        self.z = 0
        self.input = None

    def __repr__(self):
        return f"<ALU {self.input=} {self.w=} {self.x=} {self.y=} {self.z=}>"

    def consume_input(self):  # Optimize since it's always 'inp w'
        num, self.input = self.input[0], self.input[1:]
        self.w = int(num)

    def parse_inputs(self, inpA, inpB):
        if inpB in ['w', 'x', 'y', 'z']:
            inpB = getattr(self, inpB)
        else:
            inpB = int(inpB)
        def Asetter(val):
            setattr(self, inpA, val)
        a = getattr(self, inpA)
        return a, Asetter, inpB

    def run(self, command: str):
        op = command[:3]
        if op == 'inp':
            self.consume_input()
            return
        inpA = command[4]
        inpB = command[6:]
        a, setA, b = self.parse_inputs(inpA, inpB)
        if op == "add":
            setA(a + b)
            return
        if op == "mul":
            setA(a * b)
            return
        if op == "div":
            assert b != 0, f"Dividing by zero"
            setA(a // b)
            return
        if op == 'mod':
            assert a >= 0 and b > 0, f"Modulo operator has invalid bounds on arguments"
            setA(a % b)
            return
        if op == 'eql':
            setA(int(a == b))
            return

@functools.lru_cache(maxsize=None)
def GetDigitOps(commands, digit):
    curdigit = -1
    digit_commands = []
    for command in commands:
        if command[:3] == 'inp':
            curdigit += 1
        if curdigit == digit:
            digit_commands.append(command)
    return digit_commands

@functools.lru_cache(maxsize=None)
def Solve(commands, digit, z):
    '''
    SIGNIFICANT speed gains (part 2 goes from 45 minutes down to 45 seconds) from:
    1) Decompiling the program for each digit, utilizing the fact that there are only 3 true "variables" for each digit
    2) Removing x and y components, since they're zeroes out at the beginning of the program and only z in maintained
    3) Preprocessing the commands to just get the 3 "variables" in optimization 1) instead of reinterpreting it each time

    There is still logic to optimize this down to O(1) to solve, but this is good enough for now.
    Extra logic: https://github.com/dphilipson/advent-of-code-2021/blob/master/src/days/day24.rs
    '''
    if digit < 4:
        print(f"Solving {digit}th digit, {z=}")
    check, div, add = commands[digit]
    for w in range(1,10):
        if z%26 + check == w:
            newz = z//div
        else:
            newz = 26*(z//div) + w + add

        if digit == 13:
            if newz == 0:
                return str(w)
            continue
            
        # Propagate z through to the next digit
        remaining_solution = Solve(commands, digit+1, newz)
        if remaining_solution is not None:
            return str(w) + remaining_solution
    return None


def CheckNum(num, commands):
    if int(num) % 10000 == -1:
        print(f"Checking number {num}")
    alu = ALU()
    alu.input = num
    for command in commands:
        alu.run(command)
    print(f"{num} -> {alu}")
    if alu.z == 0:
        print(f"{num} is valid!")
        quit()


def main():
    # Parse input
    with open("input", 'r') as f:
        inp = f.read().splitlines()

    # Preprocess commands to get just ADD/CHECK/DIV
    commands = []
    digit_breaks = [idx for idx, elem in enumerate(inp) if elem[:3] == 'inp']
    # for commands in inp:
    for start_line in digit_breaks:
        check = int(inp[start_line+5][6:])
        div = int(inp[start_line+4][6:])
        add = int(inp[start_line+15][6:])
        commands.append((check, div, add))
    commands = tuple(commands)
    # print(commands)
    # quit()
    solution = Solve(commands, 0, 0)
    print("Solution:")
    print(solution)


if __name__ == "__main__":
    import cProfile
    from pstats import SortKey
    cProfile.run('main()', sort=SortKey.CUMULATIVE)