import numpy as np
import matplotlib.pyplot as plt
np.set_printoptions(linewidth=150, suppress=True)

def Enhance(image, algo, infinite_value):
    # Expand image with 0s in each direction
    image = np.pad(image, 1, constant_values=infinite_value)
    new_image = np.zeros_like(image)
    # Pad by another 0 in each direction, for the windowing
    image = np.pad(image, 1, constant_values=infinite_value)

    # For each pixel, generate the 3x3 area of pixels
    for y, row in enumerate(new_image):
        for x, elem in enumerate(row):
            window = image[y: y+3, x: x+3]
            num = int(''.join(window.flatten()), 2)
            new_image[y,x] = algo[num]

    # Determine what pixels are on at infinity
    inf_val = ''.join([infinite_value]*9)
    print(f"Infinite window: {inf_val}")
    inf_val = algo[int(inf_val, 2)]
    print(f"New infinite padding: {inf_val}")
    return new_image, inf_val

def main():
    # Parse input
    with open("input", 'r') as f:
        inp = f.read().splitlines()
    algo = inp.pop(0)
    algo = algo.replace("#","1").replace(".", "0")
    image = inp[1:]
    image = [row.replace('#','1') for row in image]
    image = [[char for char in row.replace('.','0')] for row in image]
    image = np.asarray(image)

    # Iterate
    inf_val = '0'
    fig, ax = plt.subplots()
    im = ax.imshow(image.astype(np.int64))
    fig.show()
    for _ in range(50):
        image, inf_val = Enhance(image, algo, inf_val)
        im.set_data(image.astype(np.int64))
        im.set_extent((0,image.shape[1],0,image.shape[0]))
        plt.pause(0.25)
    print(np.sum(image.astype(np.int64)))

if __name__ == "__main__":
    main()