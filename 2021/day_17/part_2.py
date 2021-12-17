import numpy as np
import matplotlib.pyplot as plt
np.set_printoptions(linewidth=150, suppress=True)

# On last step: deltay <= height, deltax <= width

def main():
    # Parse input
    with open("challenge", 'r') as f:
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

    # Y-velocity:
    # yvel(n) = yvel(0) - n
    # yvel(n) = yvel(0) - n

    # Y-position:
    # y(n) = y(n-1) + yvel(n-1)
    # y(n) = n*yvel(0) - n(n-1)/2


    # At the end, step=N:
    # ymin <= N*yvel(0) - N(N-1)/2 <= ymax
    # ymin/N + (N-1)/2 <= yvel(0) <= ymax/N + (N-1)/2
    # Now we just want to select yvel values that match this for some N

    # Only need to check N up to this value for n
    ytop = max(abs(ymin), abs(ymax))
    N = 2*ytop
    print(N)

    passing = []
    for n in range(1,N+1):
        pass_this_n = []
        # Create a list of all yvel/xvel pairs that pass for this N
        yvel_min = int(np.ceil(ymin/n + (n-1)/2))
        yvel_max = int(np.floor(ymax/n + (n-1)/2))
        for yvel in range(yvel_min, yvel_max+1):
            # Solution where xvel(N) = 0 (N_x <= n)
            xvel_min = int(np.ceil((np.sqrt(1+8*xmin)-1)/2))
            xvel_max = int(np.floor((np.sqrt(1+8*xmax)-1)/2))
            for xvel in range(xvel_min, xvel_max+1):
                if xvel > n: continue  # xvel = N_x
                pass_this_n.append([xvel, yvel])
            # Solution where xvel(N) > 0 (N_x > n)
            if n == 0: continue
            xvel_min = int(np.ceil(xmin/n + (n-1)/2))
            xvel_max = int(np.floor(xmax/n + (n-1)/2))
            for xvel in range(xvel_min, xvel_max+1):
                if xvel <= n: continue
                pass_this_n.append((xvel, yvel))
        passing.append(pass_this_n)
    # Some trajectories hang out in the zone for more than one step - double counted
    trajs = set()
    for idx, pass_n in enumerate(passing):
        for x in pass_n:
            trajs.add(tuple(x))
        print(f"{idx}: {pass_n}")
    print(f"Total: {len(trajs)}")
    # At some step, xvel(N_x) = 0. Until then,
    # xvel(n) = xvel(n-1) - 1, x(n) = x(n-1) + xvel(n-1)
    # xvel(n) = xvel(0) - n,  x(n) = n*xvel(0) - n(n-1)/2
    # From ^ we get N_x = xvel(0)
    # We want xmin <= x(N) <= xmax
    # If N >= N_x: (call xvel(0) = x0)
    #   xmin <= x(N_x) <= xmax
    #   xmin <= N_x*x0 - N_x(N_x-1)/2 <= xmax
    #   xmin <= x0^2 - x0^2/2 + x0/2 <= xmax
    #   2*xmin <= x0^2 + x0 <= 2*xmax
    #   1) x0^2 + x0 + 2xmin >= 0
    #   2) x0^2 + x0 - 2xmax <= 0 (and x0 >= 0, assumed)
    #   Quadratic formula:
    #   1) (-1-sqrt(1+8xmin))/2 >= x0 >= (-1+sqrt(1+8xmin))/2
    #   2) (-1-sqrt(1+8xmax))/2 <= x0 <= (-1+sqrt(1+8xmax))/2
    #   Left 2 are trivial since 0 <= x0
    #   (-1+sqrt(1+8*xmin))/2 <= x0 <= (-1+sqrt(1+8*xmax))/2
    # If N < N_x:
    #   x(N) = N*x0 - N(N-1)/2
    #   xmin/N + (N-1)/2 <= x0 <= xmax/N + (N-1)/2


    # Visualization - phase space coloring
    minx = min(traj[0] for traj in trajs)
    miny = min(traj[1] for traj in trajs)
    maxx = max(traj[0] for traj in trajs)
    maxy = max(traj[1] for traj in trajs)
    # minx = 5; maxx = 50
    # miny = -20; maxy = -10
    print(minx, maxx)
    print(miny, maxy)

    fig, ax = plt.subplots()
    phase = np.zeros((maxx-minx+1, maxy-miny+1))
    # for x in range(phase.shape[0]):
    #     for y in range(phase.shape[1]):
    #         phase[x,y] = x+ y*10
    for n, pass_n in enumerate(passing):
        for x, y in pass_n:
            phase[x-minx, y-miny] = 1
    phase = np.fliplr(phase).T
    ax.imshow(phase, extent=(minx, maxx+1, miny, maxy+1), aspect='equal')
    plt.show()


    # Uncomment the rest to actually run a trajectory...
    # xvel, yvel = 7, 1
    # N = 6
    # print("final positions:", N*xvel - N*(N-1)/2, N*yvel - N*(N-1)/2)
    # print(xvel*(xvel-1)//2)
    # x, y = 0, 0
    # for n in range(1,N+1):
    #     y += yvel
    #     x += xvel
    #     yvel -= 1
    #     xvel -= 1 if xvel > 0 else 0
    #     print(n, x, y)
    # print(xvel)

if __name__ == "__main__":
    main()