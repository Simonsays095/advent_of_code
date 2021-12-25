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
    if digit < 8:
        print(f"Solving {digit}th digit, z={z}")
    for num in range(1,10):
        alu = ALU()
        alu.z = z
        alu.input = str(num)
        digit_commands = GetDigitOps(commands, digit)
        for command in digit_commands:
            alu.run(command)
        if digit == 13:
            if alu.z == 0:
                return str(num)
            continue
            
        # Propagate z through to the next digit
        remaining_solution = Solve(commands, digit+1, alu.z)
        if remaining_solution is not None:
            return str(num) + remaining_solution
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

    inp = tuple( line for line in inp if not line.startswith('#'))

    solution = Solve(inp, 0, 0)
    print("Solution:")
    print(solution)


if __name__ == "__main__":
    import cProfile
    from pstats import SortKey
    cProfile.run('main()', sort=SortKey.CUMULATIVE)