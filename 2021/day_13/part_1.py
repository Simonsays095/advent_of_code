import numpy as np
import matplotlib.pyplot as plt
np.set_printoptions(linewidth=150)

class Instruction:
    def __init__(self, inst_str: str):
        # Starts with "fold along"
        inst_str = inst_str.split()[-1]
        direction, num = inst_str.split("=")
        direction, num = direction, int(num)
        if direction == "x":
            self.axis = 1
        elif direction == "y":
            self.axis = 0
        self.position = num

    def apply(self, grid: np.ndarray):
        # Split at position
        size = grid.shape[self.axis]
        size1 = self.position
        region1 = grid.take(range(size1), axis=self.axis)
        region2 = grid.take(range(size1+1, size),axis=self.axis)

        # Flip region 2
        region2 = np.flip(region2, axis=self.axis)

        # Overlap by turning on positions that were on in either region
        region1 = np.bitwise_or(region1, region2)
        return region1
    
    def reverse(self, grid: np.ndarray, finalshape: np.ndarray):
        '''
        IMPORTANT: Will keep all duplicate values. The bitwise_or
        operation is uninvertible, so we assume it's present in both regions.
        '''
        # Figure out duplicate positions
        print(finalshape, grid.shape)
        size2 = finalshape[self.axis] - grid.shape[self.axis] - 1
        print(size2)
        region2 = grid.take(range(self.position-size2, self.position), axis=self.axis)
        region2 = np.flip(region2, axis=self.axis)
        print(region2)

        # Stack them on top of/next to each other, with a buffer gap of 0s
        if self.axis == 0:
            buffer = np.zeros((1, grid.shape[1]))
        else:
            buffer = np.zeros((grid.shape[0], 1))
        print(grid.shape, buffer.shape, region2.shape, self.axis)
        grid = np.concatenate((grid, buffer, region2), axis=self.axis)
        print(grid)
        return grid


def main():
    with open("sample", 'r') as f:
        inp = f.read().splitlines()
    instructions = []
    dots = []
    reading_instructions = False
    for line in inp:
        if line == "":
            reading_instructions = True
            continue
        if reading_instructions:
            instructions.append(Instruction(line))
        else:
            dots.append([int(coord) for coord in line.split(",")])
    sizex = 0
    sizey = 0
    for dotx, doty in dots:
        sizex = max(sizex, dotx+1)
        sizey = max(sizey, doty+1)
    paper = np.zeros((sizey, sizex), dtype=np.int64)
    for dotx, doty in dots:
        paper[doty, dotx] = 1
    print(paper)

    # Create plots
    fig1, axes = plt.subplots(3,4)  # Hard-coded indices
    axes[0,0].imshow(paper, cmap='Greys')
    axes[0,0].set_aspect('equal')

    papershape = [paper.shape]
    for idx, instruction in enumerate(instructions):
        paper = instruction.apply(paper)
        papershape.append(paper.shape)
        print("Total dots visible:", np.sum(paper))
        print(paper)
        i = idx // 4
        j = idx % 4
        axes[i,j].imshow(paper, cmap='Greys')
        axes[i,j].set_aspect('equal')

    # Reverse operation
    display = paper.copy()
    for y, row in enumerate(display):
        for x, elem in enumerate(row):
         display[y,x] = y + x
    
    for instruction, newshape in zip(instructions[::-1], papershape[-2::-1]):
        display = instruction.reverse(display, newshape)
    
    fig2, ax2 = plt.subplots()
    ax2.imshow(display, cmap="viridis")

    plt.show()

if __name__ == "__main__":
    main()