with open('scanner_dists', 'rw') as f:
    inp = f.read().splitlines()
positions = []
for line in inp:
    line = line[1:-1]  # remove []
    positions.append(list(map(float, line.split())))
import numpy as np
arr = np.asarray(positions)
