import numpy as np
import matplotlib.pyplot as plt


def main():
    with open("input", 'r') as f:
        inp = f.read().splitlines()

    # Discard corrupted lines
    closeMap = {
        "<": ">",
        "(": ")",
        "{": "}",
        "[": "]"
    }
    scoreMap = {
        ")": 3,
        "]": 57,
        "}": 1197,
        ">": 25137
    }
    openStack = []
    score = 0
    corrupted = []
    for idx, nav in enumerate(inp):
        print(nav)
        for char in nav:
            if char in closeMap.keys():
                openStack.append(char)
            elif char in closeMap.values():
                # Check for corrupted closing
                expected = closeMap[openStack[-1]]
                if expected != char:
                    print(f"Corrupted line! Expected {expected}, got {char}")
                    print(openStack)
                    score += scoreMap[char]
                    corrupted.append(idx)
                    break
                else:
                    openStack.pop()
        openStack = []
    print(score)

    # Remove corrupted lines
    for idx in corrupted[::-1]:
        del inp[idx]
    print(inp)

    # Complete incomplete lines
    complete_score = {
        ")": 1,
        "]": 2,
        "}": 3,
        ">": 4
    }
    openStack = []
    final_nav = []
    score = []
    for nav in inp:
        score.append(0)
        # print(nav)
        for char in nav:
            # print(openStack)
            if char in closeMap.keys():
                openStack.append(char)
            elif char in closeMap.values():
                openStack.pop() # Already know it's valid

        # openStack is built up, now just append the correct closing values
        closing = "".join([closeMap[openChar] for openChar in openStack[::-1]])
        for char in closing:
            score[-1] *= 5
            score[-1] += complete_score[char]
        # print(nav, closing)
        final_nav.append(nav + closing)
        print(final_nav[-1])
        openStack = []
    
    num_scores = len(score)
    print(score)
    score = sorted(score)
    print(score[(num_scores-1)//2])



if __name__ == "__main__":
    main()