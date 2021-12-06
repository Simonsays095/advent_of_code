import numpy as np
import matplotlib.pyplot as plt

class Submarine:
    def __init__(self):
        self.position = np.array([0,0])
        self.aim = 0

    def enact_command(self, command):
        direction, amount = command.split()
        amount = int(amount)
        if direction == "forward":
            self.position += amount*np.array([1,self.aim])
        elif direction == "down":
            self.aim += amount
        elif direction == "up":
            self.aim -= amount
        else:
            raise ValueError(f"Unknown command, {command}")
        return

def main():
    with open("input", 'r') as f:
        commands = f.read().splitlines()
    
    sub = Submarine()
    path = np.zeros((len(commands)+1, 2))
    for idx, command in enumerate(commands):
        sub.enact_command(command)
        path[idx+1] = sub.position
    print(path[-1])
    print(path[-1,0]*path[-1,1])

    # Plot the course
    fig, ax = plt.subplots()
    ax.plot(path[:,0], -path[:,1])

    # Get the depth from day 1
    with open('../day_1/input', 'r') as f:
        depths = f.read().splitlines()
    depths = -np.asarray(depths, dtype=np.float64)

    ax.plot(range(len(depths)), 100*depths, color='black')
    plt.show()

if __name__ == "__main__":
    main()