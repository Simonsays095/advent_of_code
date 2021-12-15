import numpy as np
import matplotlib.pyplot as plt
np.set_printoptions(linewidth=150, suppress=True)


def main():
    # Parse input
    with open("sample2", 'r') as f:
        inp = f.read().splitlines()
    template = inp.pop(0)
    inp.pop(0)  # Blank line

    # Convert "XY -> Z" to "XY -> XZ and ZY"
    all_chars = set()
    pairs = []
    replacement = {}
    for line in inp:
        all_chars = all_chars.union(set(char for char in line if char.isalpha()))
        start, add = line.split(' -> ')
        end = start[0] + add + start[1]
        replacement[start] = end
    all_chars = list(all_chars)  # Commit to an ordering
    print(all_chars)
    pairs = [chari + charj for chari in all_chars for charj in all_chars]
    print(pairs)

    # Create the generator matrix for time evolution
    num_pairs = len(pairs)
    stepmat = np.zeros((num_pairs, num_pairs), dtype=np.int64)
    for i, pair in enumerate(pairs):
        out = replacement[pair]
        first = pairs.index(out[:2])
        last = pairs.index(out[1:])
        stepmat[first, i] += 1
        stepmat[last, i] += 1
        print(pair, first, last)
    print(stepmat)

    # Encode the starting polymer template as a vector
    polymer = np.zeros(num_pairs, dtype=np.int64)
    for char1, char2 in zip(template[:-1], template[1:]):
        polymer[pairs.index(char1+char2)] += 1
    print(polymer)

    # Evolve the "pair state" of the polymer for the desired number of iterations
    history = [polymer]
    for _ in range(40):
        polymer = stepmat @ polymer
        history.append(polymer)
        print(polymer)
    max_occ = max(polymer)
    min_occ = min(polymer)
    print(min_occ, max_occ)

    # Convert #pairs to # letters
    occurance = {char: 0 for char in all_chars}
    for idx, pair in enumerate(pairs):
        charA = pair[0]
        charB = pair[1]
        occurance[charA] += polymer[idx]
        occurance[charB] += polymer[idx]

    # Add 1 to first/last letters, then divide by 2
    # (Double-counting all interior characters, XNX -> one N from XN and one from NX )
    occurance[template[0]] += 1
    occurance[template[-1]] += 1
    for char in occurance:
        occurance[char] = occurance[char] // 2
    print()
    print(occurance)
    print(max(occurance.values()) - min(occurance.values()))

    print(history)
    occurance_history = []
    for state in history:
        # Convert #pairs to # letters
        occurance = [0]*len(all_chars)
        for idx, pair in enumerate(pairs):
            charA = pair[0]
            charB = pair[1]
            occurance[all_chars.index(charA)] += state[idx]
            occurance[all_chars.index(charB)] += state[idx]
        # Add 1 to first/last letters, then divide by 2
        # (Double-counting all interior characters, XNX -> one N from XN and one from NX )
        occurance[all_chars.index(template[0])] += 1
        occurance[all_chars.index(template[-1])] += 1
        for char in range(len(occurance)):
            occurance[char] = occurance[char] // 2
        occurance_history.append(occurance)
    print(occurance_history)

    # Plot ln(#occurances) vs time for all characters
    plot_nums = np.asarray(occurance_history)
    print(plot_nums)
    # plot_nums[plot_nums == 0] = 1
    # print(np.log(plot_nums))
    fig, ax = plt.subplots()
    ax.plot(plot_nums)
    ax.legend(all_chars)
    ax.set_yscale('log')
    ax.set_ylabel('Number of occurences in polymer')
    ax.set_xlabel('steps')
    plt.show()
    # plot_nums = np.zeros((len(occurance_history), len))
    # for row_idx, state in enumerate(history):
    #     for char in (state):



if __name__ == "__main__":
    main()