import sys
from types import GetSetDescriptorType
import numpy as np
import matplotlib.pyplot as plt
np.set_printoptions(linewidth=150, suppress=True, threshold=sys.maxsize)
sys.setrecursionlimit(1500)

FORWARD_NEIGHBORS = [
    np.asarray([+1,0]),
    np.asarray([0,+1])   
]


ALL_NEIGHBORS = [
    np.asarray([-1,0]),
    np.asarray([+1,0]),
    np.asarray([0,-1]),
    np.asarray([0,+1])   
]


class PathFinder:

    def __init__(self, risklevels: np.ndarray):
        self.risklevels = risklevels
        self.riskMap = np.full_like(self.risklevels, 1e6)
        self.updated = np.zeros_like(self.risklevels)

    def GetNeighbors(self, point, pop = ALL_NEIGHBORS):
        neighbors = []
        for neighbor in pop:
            neighbor = point + neighbor
            if any(neighbor < 0) or any(neighbor >= self.risklevels.shape):
                continue
            neighbors.append(neighbor)
        return neighbors

    #test for exact equality
    def arreq_in_list(self, myarr, list_arrays):
        return next((True for elem in list_arrays if np.array_equal(elem, myarr)), False)

    def UpdateRisk(self, check):
        new_check = []
        # print(f"Updating neighbors: {check}")
        for point in check:
            # print(f"Checking point {point}")
            self.updated[point[0], point[1]] = True
            myfullrisk = self.riskMap[point[0], point[1]]
            for neighbor in self.GetNeighbors(point):
                if self.updated[neighbor[0], neighbor[1]]:
                    continue
                otherrisklevel = self.risklevels[neighbor[0], neighbor[1]]
                otherfullrisk = self.riskMap[neighbor[0], neighbor[1]]
                if myfullrisk + otherrisklevel < otherfullrisk:
                    self.riskMap[neighbor[0], neighbor[1]] = myfullrisk + otherrisklevel
                    # if neighbor not in new_check:
                    # if not self.arreq_in_list(neighbor, new_check):
                    #     new_check.append(neighbor)
                    new_check.append(neighbor)
                    # self.UpdateRisk([neighbor])
        return new_check

    def CalculateRisk(self, start: np.ndarray):
        # Go to all neighbors of start. For each one:
        self.riskMap = np.full_like(self.risklevels, 1e6)
        self.riskMap[start[0], start[1]] = 0
        self.updated = np.zeros_like(self.risklevels)
        check_points = [start]
        while len(check_points) != 0:
            check_points = self.UpdateRisk(check_points)

    def CalculatePath(self, end: np.ndarray):
        neighbors = self.GetNeighbors(end, pop=ALL_NEIGHBORS)
        risks = [self.riskMap[neighbor[0], neighbor[1]] for neighbor in neighbors]
        minRiskNeighbor = neighbors[np.argmin(risks)]
        if min(risks) == 0:
            return [end] + [minRiskNeighbor]
        return [end] + self.CalculatePath(minRiskNeighbor)

def main():
    # Parse input
    with open("input", 'r') as f:
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
    # risk = newrisk
    print(newrisk)

    start = np.asarray([0,0])
    end = np.asarray(risk.shape)-1


    # Compute the regular cost
    finder = PathFinder(risk)
    finder.CalculateRisk(start)
    regCost = finder.riskMap[end[0], end[1]]
    path = np.asarray(finder.CalculatePath(end))
    print(path)
    # quit()
    # Compute the cost for any other point
    extraCost = np.empty_like(risk)
    for i in range(risk.shape[0]):
        for j in range(risk.shape[1]):
            print(f"Computing ({i}, {j}) value")
            newpt = np.asarray([i,j])
            finder.CalculateRisk(newpt)
            newriskA = finder.riskMap[start[0], start[1]]
            newriskB = finder.riskMap[end[0], end[1]]
            extraCost[i,j] = newriskA + newriskB - regCost


    fig, ax = plt.subplots()
    ax.imshow(extraCost)
    for pt in path:
        ax.add_artist(plt.Rectangle(xy=(pt[0]-1/2, pt[1]-1/2), color='r', width=1, height=1))
    plt.show()

if __name__ == "__main__":
    main()