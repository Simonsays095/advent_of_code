import numpy as np
import matplotlib.pyplot as plt
np.set_printoptions(linewidth=150, suppress=True)

# On last step: deltay <= height, deltax <= width

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

    # Y-velocity:
    # yvel(n) = yvel(0) - n
    # yvel(n) = yvel(0) - n

    # Y-position:
    # y(n) = y(n-1) + yvel(n-1)
    # y(n) = (n+1)*yvel(0) - n(n+1)/2

    # At the end, step=N:
    # ymin <= y(N) = (N+1)*yvel(0) - N(N+1)/2 <= ymax
    # ymin/(N+1) + N/2 <= yvel(0) <= ymax/(N+1) + N/2
    # To maximize N: The interval [ymin/(N+1)+N/2, ymax/(N+1)+N/2] contains at least one integer
    # N even:
    #   * [ymin/(N+1)+k, ymax/(N+1)+k] has an integer
    #   * [ymin/(N+1), ymax/(N+1)] has an integer, must be 1
    #   * ymin/(N+1) < 1 <= ymax/(N+1)  (ymin/ymax abs value)
    #   * ymin < N+1 <= ymax --> ymin -1 < N <= ymax
    #   * N <= ymax - 1 (max on =)
    # N odd:
    #   * [ymin/(N+1)+1/2, ymax/(N+1)+1/2] has an integer, must be 1
    #   * ymin/(N+1)+1/2 < 1 <= ymax/(N+1)+1/2  (ymin/ymax abs value)
    #   * ymin < (N+1)/2 <= ymax
    #   * N <= 2*ymax - 1
    # No matter what N (will always be odd?):
    # 
    ytop = max(abs(ymin), abs(ymax))
    N = 2*ytop - 1
    print(ymin/(N+1) + N/2, ymax/(N+1) + N/2)
    yvel = np.floor(ymax/(N+1) + N/2)
    print("closed-form:", N, yvel)
    
    # At some step, xvel(N_x) = 0. Until then,
    # xvel(n) = xvel(n-1) - 1, x(n) = x(n-1) + xvel(n-1)
    # xvel(n) = xvel(0) - n,  x(n) = n*xvel(0) - n(n-1)/2
    # From ^ we get N_x = xvel(0)
    # We want
    # xmin <= x(N_x) <= xmax
    # xmin <= N_x*xvel(0) - N_x(N_x-1)/2 <= xmax
    # xmin <= xvel(0)^2 - xvel(0)^2/2 - xvel(0)/2 <= xmax
    # xmin <= xvel(0)*(xvel(0)-1)/2 <= xmax
    # xvel(0)^2 <= 2*xmax+1 -> 
    xvel = (1+np.sqrt(1+8*xmax))//2 - 1
    print(xvel)
    x, y = 0, 0
    for n in range(N+1):
        y += yvel
        x += xvel
        yvel -= 1
        xvel -= 1 if xvel > 0 else 0
        print(n, x, y)
    print(xvel)

if __name__ == "__main__":
    main()