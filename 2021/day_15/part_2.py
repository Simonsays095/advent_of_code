import sys
from types import GetSetDescriptorType
import numpy as np
import matplotlib.pyplot as plt
np.set_printoptions(linewidth=150, suppress=True, threshold=sys.maxsize)


class PathFinder:
    NEIGHBORS = [
        np.asarray([-1,0]),
        np.asarray([+1,0]),
        np.asarray([0,-1]),
        np.asarray([0,+1])   
    ]

    def __init__(self, risklevels: np.ndarray):
        self.risklevels = risklevels
        self.riskMap = np.full_like(self.risklevels, 1e6)

    def GetNeighbors(self, point):
        neighbors = []
        for neighbor in PathFinder.NEIGHBORS:
            neighbor = point + neighbor
            if any(neighbor < 0) or any(neighbor >= self.risklevels.shape):
                continue
            neighbors.append(neighbor)
        return neighbors

    def UpdateRisk(self, check):
        print(f"Updating risk map for {len(check)} points.")
        new_check = []
        for point in check:
            myfullrisk = self.riskMap[point[0], point[1]]
            for neighbor in self.GetNeighbors(point):
                otherrisklevel = self.risklevels[neighbor[0], neighbor[1]]
                otherfullrisk = self.riskMap[neighbor[0], neighbor[1]]
                if myfullrisk + otherrisklevel < otherfullrisk:
                    self.riskMap[neighbor[0], neighbor[1]] = myfullrisk + otherrisklevel
                    new_check.append(neighbor)
        return new_check

    def CalculateRisk(self, start: np.ndarray):
        # Go to all neighbors of start. For each one:
        self.riskMap = np.full_like(self.risklevels, 1e6)
        self.riskMap[start[0], start[1]] = 0
        check_points = [start]
        while len(check_points) != 0:
            check_points = self.UpdateRisk(check_points)

    def CalculatePath(self, end: np.ndarray):
        print(end, self.GetNeighbors(end))
        risks = [self.riskMap[neighbor[0], neighbor[1]] for neighbor in self.GetNeighbors(end)]
        minRiskNeighbor = self.GetNeighbors(end)[np.argmin(risks)]
        if min(risks) == 0:
            return [end] + [minRiskNeighbor]
        return [end] + self.CalculatePath(minRiskNeighbor)

def main():
    # Parse input
    with open("sample", 'r') as f:
        inp = f.read().splitlines()
    risk = np.asarray([[int(x) for x in line] for line in inp])

    # Add 5x multiplication
    newrisk = np.tile(risk, (5,5,1,1))
    print(newrisk)
    for i in range(5):
        for j in range(5):
            # mod moves to within [0,8], need within [1,9]
            newrisk[i,j,:,:] = np.mod(i + j + newrisk[i,j,:,:] - 1, 9) + 1
    newrisk = newrisk.transpose(0,2,1,3)
    newrisk = newrisk.reshape(5*risk.shape[0], 5*risk.shape[1])
    print(newrisk)

    start = np.asarray([20,20])
    end = np.asarray(newrisk.shape)-1

    finder = PathFinder(newrisk)
    finder.CalculateRisk(start)
    print(finder.riskMap)

    path = np.asarray(finder.CalculatePath(end))
    print(path)

    fig, ax = plt.subplots()
    ax.imshow(finder.riskMap)
    for pt in path:
        ax.add_artist(plt.Rectangle(xy=(pt[0]-1/2, pt[1]-1/2), color='r', width=1, height=1))
    plt.show()

if __name__ == "__main__":
    main()