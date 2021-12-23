import numpy as np
import matplotlib.pyplot as plt
np.set_printoptions(linewidth=150, suppress=True)


def main():
    # Parse input
    with open("input", 'r') as f:
        inp = f.read().splitlines()

    cube = np.zeros((101,101,101), dtype=np.int64)  # -50 to 50 on each axis
    for line in inp:
        state, cuboid = line.split()
        xs, ys, zs = cuboid.split(',')
        xs = np.asarray(list(map(int, xs[2:].split('..'))))
        ys = np.asarray(list(map(int, ys[2:].split('..'))))
        zs = np.asarray(list(map(int, zs[2:].split('..'))))

        # ignore outside of [-50,50] (on any axis, misses region entirely)
        if all(xs < -50) or all(xs > 50):
            continue
        if all(ys < -50) or all(ys > 50):
            continue
        if all(zs < -50) or all(zs > 50):
            continue

        # Shift to center on [0,0,0], and crop to [-50,50]
        print(xs)
        xs[xs < -50] = -50
        xs[xs > 50] = 50
        print(xs)
        xs += 50
        ys[ys < -50] = -50
        ys[ys > 50] = 50
        ys += 50
        zs[zs < -50] = -50
        zs[zs > 50] = 50
        zs += 50
        print(state, xs, ys, zs)

        if state == 'on':
            cube[xs[0]:xs[1]+1, ys[0]:ys[1]+1, zs[0]:zs[1]+1] = 1
        elif state == 'off':
            cube[xs[0]:xs[1]+1, ys[0]:ys[1]+1, zs[0]:zs[1]+1] = 0
        else:
            raise ValueError(f"Unknown state, {state}")
        print(np.sum(cube))

    print(np.sum(cube))

if __name__ == "__main__":
    main()