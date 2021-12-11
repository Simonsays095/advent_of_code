import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation


class Octopus:
    def __init__(self, energy):
        self.neighbors = []
        self.energy = energy
        self.flashed = False

    def flash(self):
          # Already counted or not enough energy
        if self.flashed or self.energy <= 9:
            return 0
        
        self.flashed = True
        num_flashed = 1
        for neighbor in self.neighbors:
            neighbor.energy += 1
            num_flashed += neighbor.flash()
        return num_flashed
    
    def reset(self):
        if self.flashed:
            self.energy = 0
        self.flashed = False
    


class OctopusGrid:
    neighborOffset = {
        '0': [-1, -1],
        '1': [ 0, -1],
        '2': [+1, -1],
        '3': [-1,  0],
        '4': [+1,  0],
        '5': [-1, +1],
        '6': [ 0, +1],
        '7': [+1, +1],
    }
    def __init__(self, shape):
        self.octopuses = np.empty(shape, dtype=Octopus)
        print(self.octopuses)

    def add_with_energy(self, energy, x, y):
        octo = Octopus(energy)
        self.octopuses[x,y] = octo
    
    def compute_neighbors(self):
        for x in range(self.octopuses.shape[0]):
            for y in range(self.octopuses.shape[1]):
                octo = self.octopuses[x, y]
                neighbors = '01234567'
                if y == 0:
                    neighbors = neighbors.replace('0','')
                    neighbors = neighbors.replace('1','')
                    neighbors = neighbors.replace('2','')
                if x == 0:
                    neighbors = neighbors.replace('0','')
                    neighbors = neighbors.replace('3','')
                    neighbors = neighbors.replace('5','')
                if y == self.octopuses.shape[0]-1:
                    neighbors = neighbors.replace('5','')
                    neighbors = neighbors.replace('6','')
                    neighbors = neighbors.replace('7','')
                if x == self.octopuses.shape[1]-1:
                    neighbors = neighbors.replace('2','')
                    neighbors = neighbors.replace('4','')
                    neighbors = neighbors.replace('7','')
                for neighbor in neighbors:
                    xoff, yoff = OctopusGrid.neighborOffset[neighbor]
                    octo.neighbors.append(self.octopuses[x+xoff, y+yoff])

    def step(self):
        # Add 1 to each energy
        for octo in self.octopuses.flatten():
            octo.energy += 1
        
        # Flash all octopuses once
        num_flashed = 0
        for octo in self.octopuses.flatten():
            num_flashed += octo.flash()
        print(f"Total of {num_flashed} flashes")

        # Check for all flashes
        if all([octo.flashed for octo in self.octopuses.flatten()]):
            print("All flashed!")
            # quit()

        # Reset energies/flash status
        for octo in self.octopuses.flatten():
            octo.reset()
        return num_flashed

    @property
    def energies(self):
        return np.asarray([[octo.energy for octo in col] for col in self.octopuses])




def main():
    with open("input", 'r') as f:
        inp = f.read().splitlines()
    energies = np.asarray([[int(char) for char in row] for row in inp])
    grid = OctopusGrid(energies.shape)
    for x, col in enumerate(energies):
        for y, energy in enumerate(col):
            grid.add_with_energy(energy, x, y)
    grid.compute_neighbors()
    
    tot_flashes = 0
    fig, ax = plt.subplots()
    im = ax.imshow(10-grid.energies, vmin=1, vmax=10, cmap='Greys')
    # plt.show()
    def animate(i):
        grid.step()
        # flash_only = np.zeros_like(grid.energies)
        # flash_only[np.where(grid.energies == 0)] = 10
        # print(flash_only)
        # print(sum(flash_only))
        # im.set_array(10-flash_only)
        im.set_array(10-grid.energies)
    anim = animation.FuncAnimation(fig, animate, interval=100, save_count=600)
    writergif = animation.PillowWriter(fps=10)
    anim.save('animation.gif', writer=writergif)
    # for step in range(10000):
    #     print(f"Starting step {step+1}")
    #     tot_flashes += grid.step()
    # print(tot_flashes)

if __name__ == "__main__":
    main()