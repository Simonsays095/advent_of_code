import numpy as np
import matplotlib.pyplot as plt

def main():
    with open("input", 'r') as f:
        xs = f.read().strip().split(',')
    xs = [ int(x) for x in xs]
    print(xs)

    minx, maxx = min(xs), max(xs)
    cost = []
    for p in range(minx, maxx+1):
        cost.append(0)
        for x in xs:
            diff = abs(x-p)
            cost[-1] += diff*(diff+1)/2
    fig, ax = plt.subplots()
    ax.plot(range(minx, maxx+1), cost)
    plt.show()
    print(cost)
    print(min(cost))

if __name__ == "__main__":
    main()