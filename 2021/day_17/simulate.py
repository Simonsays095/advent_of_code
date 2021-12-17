import numpy as np
import matplotlib.pyplot as plt

def main():
    # Parse input
    with open("input", 'r') as f:
        inp = f.read().strip()

    # Parse input into a box
    xbounds, ybounds = inp[13:].split(", ")  # Remove "target area: " prefix"
    print(xbounds, ybounds)
    xmin, xmax = xbounds[2:].split("..")  # remove "x=" prefix
    ymin, ymax = ybounds[2:].split("..")  # remove "y=" prefix
    xmin, xmax, ymin, ymax = int(xmin), int(xmax), int(ymin), int(ymax)
    height = ymax - ymin
    width = xmax - xmin
    print(height, width)

    # Step 1: Compute phase space bounds
    vx_max = xmax
    vx_min = 0 # Close enough
    vy_min = ymin
    ytop = max(abs(ymin), abs(ymax))
    N_max = 2*ytop - 1
    vy_max = int(np.floor(ymax/(N_max+1) + N_max/2)) + 200

    # Step 2: Simulate each starting position in phase space, returning minimum distance from the region
    def Distance(x,y):
        # Uncomment to just get distance to the center of the target
        # xavg = np.mean((xmin, xmax))
        # yavg = np.mean((ymin, ymax))
        # return np.sqrt((x-xavg)**2 + (y-yavg)**2)
        
        if xmin <= x <= xmax:
            xdist = 0
        else:
            xdist = min(abs(xmin-x), abs(xmax-x))
        if ymin <= y <= ymax:
            ydist = 0
        else:
            ydist = min(abs(ymin-y), abs(ymax-y))
        return np.sqrt(xdist**2 + ydist**2)

    def Simulate(vx, vy, additional_steps = 10):
        x, y = 0, 0
        vxstart, vystart = vx, vy
        mindist = np.sqrt(xmax**2 + ytop**2)
        while additional_steps > 0:
            if y <= 0:
                additional_steps -= 1  # Only go for a few more steps after going negative
            x += vx
            y += vy
            vx -= 1 if vx > 0 else 0
            vy -= 1
            dist = Distance(x,y)
            mindist = min(mindist, dist)
        return mindist

    distances = np.empty((vx_max-vx_min+1, vy_max-vy_min+1))
    print(f"Phase space: x=[{vx_min},{vx_max}], y=[{vy_min},{vy_max}]")
    for vy in range(vy_min, vy_max+1):
        print(f"Simulating vy={vy}")
        for vx in range(vx_min, vx_max+1):
            dist = Simulate(vx, vy)
            distances[vx - vx_min, vy - vy_min] = dist
    distances = np.fliplr(distances).T
    
    fig, [ax1, ax2] = plt.subplots(1, 2)
    hits = distances == 0
    ax2.imshow(distances, extent=(vx_min, vx_max+1, vy_min, vy_max+1), aspect='equal')
    ax1.imshow(hits, extent=(vx_min, vx_max+1, vy_min, vy_max+1), aspect='equal')
    plt.show()

    print(vx_min, vx_max)
    print(vy_min, vy_max)

if __name__ == "__main__":
    main()