import numpy as np
import matplotlib.pyplot as plt

def parse_command(command):
    direction, amount = command.split()
    amount = int(amount)
    if direction == "forward":
        return np.array([amount,0])
    if direction == "down":
        return np.array([0,amount])
    if direction == "up":
        return np.array([0,-amount])
    raise ValueError("Unknown command")

def main():
    with open("input", 'r') as f:
        commands = f.read().splitlines()
    
    path = np.zeros((len(commands)+1, 2))
    for idx, command in enumerate(commands):
        path[idx+1] = path[idx] + parse_command(command)
    print(path[-1])
    print(path[-1,0]*path[-1,1])

    # Plot the course
    fig, ax = plt.subplots()
    ax.scatter(path[:,0], -path[:,1], linestyle='solid', s=5)
    plt.show()

if __name__ == "__main__":
    main()