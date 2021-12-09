import numpy as np
import matplotlib.pyplot as plt

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
    hmap = np.asarray(inp)
    print(hmap)
    
    count = 0
    for y, row in enumerate(hmap):
        if y == 0 or y == height-1:
            continue
        for x, h in enumerate(row):
            if x == 0 or x == width-1:
                continue
            if hmap[y-1,x] > h and \
                hmap[y+1,x] > h and \
                hmap[y,x-1] > h and \
                hmap[y,x+1] > h:
                print(f"{x}, {y} = {h} is a low point")
                count += h+1
    print(count)
if __name__ == "__main__":
    main()