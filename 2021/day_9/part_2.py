from __future__ import annotations  # type-hinting Basin in merge_with
import numpy as np
import matplotlib.pyplot as plt
import PIL

class Point:
    def __init__(self, x, y, height):
        self.x = x
        self.y = y
        self.height = height
        self.basin = None


class Basin:
    def __init__(self, idx):
        self.points = []
        self.size = 0
        self.idx = idx

    def merge_with(self, other: Basin):
        self.size += other.size
        self.points.extend(other.points)
        for point in other.points:
            point.basin = self


def get_basins(points):
    basins = []
    for row in points:
        for pt in row:
            if pt.basin is not None and pt.basin not in basins:
                basins.append(pt.basin)
    return basins

def main():
    with open("input", 'r') as f:
        inp = f.read().splitlines()
    width = len(inp[0])
    height = len(inp)
    # Add boundaries as higher spots
    for idx, row in enumerate(inp):
        row = [int(char) for char in row]
        row.insert(0, 10)
        row.append(10)
        inp[idx] = row
    width += 2
    height += 2
    inp.insert(0, [10]*width)
    inp.append([10]*width)
    
    # Add all points to their own basin
    points = []
    basin_idx = 0
    for y, row in enumerate(inp):
        points.append([])
        for x, h in enumerate(row):
            pt = Point(x, y, h)
            if h < 9:
                basin = Basin(basin_idx)
                basin_idx += 1
                # Point basin and point to each other
                basin.points.append(pt)
                pt.basin = basin
                basin.size = 1
            points[-1].append(pt)
    basins = get_basins(points)
    prev_basin_num = len(basins)
    while True:
        print(len(basins), "basins")
        for y, row in enumerate(points):
            if y == 0 or y == height-1: continue
            for x, pt in enumerate(row):
                if x == 0 or x == width-1: continue
                if pt.basin is None: continue
                left = points[pt.y][pt.x-1]
                right = points[pt.y][pt.x+1]
                up = points[pt.y-1][pt.x]
                down = points[pt.y+1][pt.x]
                for other in [left, right, up, down]:
                    if other.basin is not None and other.basin != pt.basin:
                        pt.basin.merge_with(other.basin)
        basins = get_basins(points)
        if len(basins) == prev_basin_num:
            break
        prev_basin_num = len(basins)
    print("These are all unique basins")
    print([basin.size for basin in basins])
    basins = sorted(basins, key=lambda x:x.size, reverse=True)
    print([basin.size for basin in basins])
    print(basins[0].size * basins[1].size * basins[2].size)

    image = np.zeros_like(points, dtype=np.int64)
    gradient = np.zeros((height, width, 2), dtype=np.float64)
    for row in points:
        for pt in row:
            if pt.x == 0 or pt.x == width-1 or pt.y == 0 or pt.y == height-1: continue
            if pt.basin is None:
                image[pt.y][pt.x] = 0
            else:
                image[pt.y][pt.x] = pt.basin.size
            plusx = points[pt.y][pt.x+1]
            plusy = points[pt.y+1][pt.x]
            gradient[pt.y, pt.x] = [plusy.height-pt.height, plusx.height-pt.height]
    fig, (ax1, ax2, ax3) = plt.subplots(1,3)
    ax1.imshow(inp)
    ax1.set_title("Height")
    ax2.imshow(image)
    ax2.set_title("Size")
    h = image/image.max()*360*0.4
    v = 10-np.asarray(inp, dtype=np.float64)
    v *= 255/v.max()
    s= np.full_like(image, 255)
    rgb = np.dstack((h,s,v)).astype(np.uint8)
    print(rgb)
    combined = PIL.Image.fromarray(rgb, mode="HSV")
    ax3.imshow(combined)
    ax3.set_title("Height+Size")
    plt.show()


if __name__ == "__main__":
    main()