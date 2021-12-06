import numpy as np
import matplotlib.pyplot as plt

def main():
    with open("input", 'r') as f:
        lines = f.read().splitlines()
    
    lines = np.asarray(lines, dtype=np.float64)
    diff = lines[1:] - lines[:-1]
    count = np.sum(diff > 0)
    print(count, len(diff))

    # # Plot the depth of the sea floor
    # fig, ax = plt.subplots()
    # ax.plot(range(len(lines)), -lines)
    # plt.show()

if __name__ == "__main__":
    main()