from types import GetSetDescriptorType
import numpy as np
import matplotlib.pyplot as plt
np.set_printoptions(linewidth=150, suppress=True)


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

    def Findpath(self, start: np.ndarray, end: np.ndarray):
        # Go to all neighbors of start. For each one:
        check_points = [start]
        self.riskMap[start[0], start[1]] = 0
        while len(check_points) != 0:
            check_points = self.UpdateRisk(check_points)


def main():
    # Parse input
    with open("input", 'r') as f:
        inp = f.read().splitlines()
    risk = np.asarray([[int(x) for x in line] for line in inp])
    print(risk)

    start = np.asarray([0,0])
    end = np.asarray(risk.shape)-1
    print(start, end)
    print(risk[start[0], start[1]], risk[end[0], end[1]])

    path = PathFinder(risk)
    path.Findpath(start, end)
    print(path.riskMap)

    fig, ax = plt.subplots()
    ax.imshow(path.riskMap)
    plt.show()

if __name__ == "__main__":
    main()