import numpy as np
import matplotlib.pyplot as plt
np.set_printoptions(linewidth=150, suppress=True)

def Wrap(num, min_val, max_val):
    dim = max_val - min_val + 1
    return (num - min_val) % dim + min_val

class DeterministicDie:
    def __init__(self, max_val):
        self.max_val = max_val
        self.counter = 0

    def Roll(self):
        self.counter = Wrap(self.counter+1, 1, self.max_val)
        return self.counter

class Pawn:
    def __init__(self, pos):
        self.pos = pos
        self.score = 0

class DiracDice:
    def __init__(self, die, boardSize = 10, maxScore = 1000):
        self.pawn1 = None
        self.pawn2 = None
        self.die = die
        self.maxScore = maxScore
        self.boardSize = boardSize
        self.numRolls = 0
    
    def play(self, pos1, pos2):
        self.numRolls = 0
        self.pawn1 = Pawn(pos1)
        self.pawn2 = Pawn(pos2)
        print(f"Starting with pawns in positions {self.pawn1.pos} and {self.pawn2.pos}")
        while True:
            self.TakeTurn(self.pawn1)
            if self.pawn1.score >= self.maxScore:
                return self.pawn1
            self.TakeTurn(self.pawn2)
            if self.pawn2.score >= self.maxScore:
                return self.pawn2

    def TakeTurn(self, pawn, rolls = 3):
        roll = sum(self.die.Roll() for _ in range(rolls))
        self.numRolls += rolls
        pawn.pos = Wrap(pawn.pos + roll, 1, self.boardSize)
        pawn.score += pawn.pos
        print(f"Rolled a {roll}, now in position {pawn.pos} with score {pawn.score}")

def main():
    # Parse input
    with open("input", 'r') as f:
        inp = f.read().splitlines()
    pos = [int(row[-1]) for row in inp]
    game = DiracDice(DeterministicDie(100))
    game.play(pos[0], pos[1])
    print(game.numRolls)
    print(game.pawn2.score)
    print(game.pawn1.score)


if __name__ == "__main__":
    main()