import numpy as np
import matplotlib.pyplot as plt
from collections import Counter
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
        self.ContinuePlay()

    def ContinuePlay(self):
        print(f"Starting with pawns in positions {self.pawn1.pos} and {self.pawn2.pos}")
        while True:
            if self.pawn2.score >= self.maxScore:
                return self.pawn2
            self.TakeTurn(self.pawn1)
            if self.pawn1.score >= self.maxScore:
                return self.pawn1
            self.TakeTurn(self.pawn2)

    def TakeTurn(self, pawn, rolls = 3):
        roll = sum(self.die.Roll() for _ in range(rolls))
        self.numRolls += rolls
        pawn.pos = Wrap(pawn.pos + roll, 1, self.boardSize)
        pawn.score += pawn.pos
        print(f"Rolled a {roll}, now in position {pawn.pos} with score {pawn.score}")

qDie = {
    3: 1,
    4: 3,
    5: 6,
    6: 7,
    7: 6,
    8: 3,
    9: 1
}

def PlayQuantum(state: list, maxScore: int = 21):
    pos, score, turn = state  # unpack
    print(f"Simulating turn {turn}, starting from position {pos} and score {score}")
    win_turns = Counter()
    for roll, num_rolled in qDie.items():
        newpos = Wrap(pos+roll, 1, 10)
        newscore = score + newpos
        newturn = turn + 1
        if newscore >= maxScore:
            win_turns[newturn] += num_rolled  # Finished with recursion
            # win_turns.append(newturn)  # Finished with recursion
        else:
            res = PlayQuantum([newpos, newscore, newturn])
            for _ in range(num_rolled):
                win_turns += res
            # win_turns.extend(PlayQuantum([newpos, newscore, newturn]))
    return win_turns

def main():
    # Parse input
    with open("input", 'r') as f:
        inp = f.read().splitlines()
    pos = [int(row.split()[-1]) for row in inp]
    state1 = [pos[0], 0, 0]
    state2 = [pos[1], 0, 0]
    win_turns1 = PlayQuantum(state1)
    win_turns2 = PlayQuantum(state2)
    print(win_turns1)
    print(win_turns2)

    # Simulate playing every universe against every other universe
    pawn1_wins = {}
    pawn2_wins = {}
    pawn1_states = 1
    pawn2_states = 1
    for turn in range(1,15):  # Hardcoded....
        # Player 1 takes a turn
        pawn1_states *= 27
        if turn in win_turns1:
            pawn1_states -= win_turns1[turn]
            print(f" - Pawn 1 wins {win_turns1[turn]*pawn2_states} games")
            if turn not in pawn1_wins:
                pawn1_wins[turn] = 0
            pawn1_wins[turn] += win_turns1[turn]*pawn2_states
        print(f"Pawn 1 states at the end of turn {turn}: {pawn1_states}")
        # Player 2 takes a turn
        pawn2_states *= 27
        if turn in win_turns2:
            pawn2_states -= win_turns2[turn]
            print(f" - Pawn 2 wins {win_turns2[turn]*pawn1_states} games")
            if turn not in pawn2_wins:
                pawn2_wins[turn] = 0
            pawn2_wins[turn] += win_turns2[turn]*pawn1_states
        print(f"Pawn 2 states at the end of turn {turn}: {pawn2_states}")
    print(pawn1_wins, pawn2_wins)
    print(sum(pawn1_wins.values()), sum(pawn2_wins.values()))

    ax = plt.subplot()
    ax.plot(pawn1_wins.keys(), pawn1_wins.values())
    ax.plot(pawn2_wins.keys(), pawn2_wins.values())
    plt.show()

if __name__ == "__main__":
    main()