import numpy as np
import matplotlib.pyplot as plt
import re


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
                    break
                else:
                    openStack.pop()
        openStack = []
    print(score)


if __name__ == "__main__":
    main()