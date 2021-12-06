import numpy as np
import matplotlib.pyplot as plt

class Lanternfish:
    def __init__(self, days_till_rep, idx, rep_period=6):
        self.idx = idx
        self.num_children = 0
        self.rep_period = rep_period
        self.days_till_rep = days_till_rep

    def advance_day(self, day_num):
        child = None
        if self.days_till_rep == 0:
            gen_num = self.idx.count(',')
            # Plot line from: 
            # x=day_num-self.rep_period, y=gen_num
            # to
            # x=day_num, y=gen_num
            # and
            # x=day_num, y=gen_num+1
            ax.plot([day_num-self.rep_period, day_num], [gen_num, gen_num], 'b-')
            ax.plot([day_num-self.rep_period, day_num], [gen_num, gen_num+1], 'r-')
            self.rep_period = 6
            self.days_till_rep = self.rep_period+1
            child = Lanternfish(self.rep_period+2, f"{self.idx},{self.num_children}", 8)
            self.num_children += 1

        self.days_till_rep -= 1
        return child

def main():
    with open("input", 'r') as f:
        fish_days = f.read().splitlines()[0]  # trim \r\n
    fish_days = fish_days.split(',')
    fishes = []
    for idx, timer in enumerate(fish_days):
        fishes.append(Lanternfish(int(timer), str(idx)))

    print([fish.days_till_rep for fish in fishes])

    for day in range(20):
    # for day in range(80):
        new_fish = []
        for fish in fishes:
            child = fish.advance_day(day)
            if child is not None:
                new_fish.append(child)
                # print(child.idx)
        fishes.extend(new_fish)
        print(f"New number of fish: {len(fishes)}")

if __name__ == "__main__":
    # make plt/fig/ax global
    fig, ax = plt.subplots()
    main()
    plt.show()