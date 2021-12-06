import numpy as np
import matplotlib.pyplot as plt

class Line:
    def __init__(self, x1, y1, x2, y2):
        self.points = []
        if x1 == x2:
            y1, y2 = min(y1, y2), max(y1, y2)
            for y in range(y1,y2+1):
                self.points.append([x1,y])
        elif y1 == y2:
            x1, x2 = min(x1, x2), max(x1, x2)
            for x in range(x1,x2+1):
                self.points.append([x,y1])
        else:
            raise ValueError("Only vertical/horizontal lines allowed")


def main():
    with open("input", 'r') as f:
        str_lines = f.read().splitlines()
    
    lines = []
    for line in str_lines:
        line = line.split()
        x1,y1 = line[0].split(',')
        x2,y2 = line[-1].split(',')
        x1, y1, x2, y2 = int(x1), int(y1), int(x2), int(y2)
        if x1 == x2 or y1 == y2:
            lines.append(Line(x1,y1,x2,y2))

    max_coord = np.max([np.max(line.points) for line in lines]) + 1
    grid = np.zeros((max_coord,max_coord))
    for line in lines:
        for point in line.points:
            grid[point[0], point[1]] += 1
    print(np.count_nonzero(grid >= 2))

    fig, ax = plt.subplots()
    ax.imshow(grid)
    plt.show()

if __name__ == "__main__":
    main()