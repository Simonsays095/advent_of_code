import numpy as np
import matplotlib.pyplot as plt

class Lanternfish:
    def __init__(self, days_till_rep, idx, rep_period=6):
        self.idx = idx
        self.num_children = 0
        self.rep_period = rep_period
        self.days_till_rep = days_till_rep

    def advance_day(self):
        child = None
        if self.days_till_rep == 0:
            self.days_till_rep = self.rep_period+1
            child = Lanternfish(self.rep_period+2, f"{self.idx},{self.num_children}")
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

    num_days = 257  # Include day 0
    births = np.zeros((num_days), dtype=np.int64)
    total_fish = np.zeros((num_days), dtype=np.int64)

    # Count week 1 births
    week_1_births = np.histogram([fish.days_till_rep for fish in fishes], bins=[0,1,2,3,4,5,6])[0]
    print(week_1_births)
    births[1:7] = week_1_births  # Offset by one to allow 0 days left

    # Count week 1 fish
    total_fish[0] = len(fishes)
    for day in range(1,8):
        total_fish[day] = total_fish[day-1] + births[day]

    # Propagate forward
    for idx in range(7,num_days):
        births[idx] = births[idx-9] + births[idx-7]
        total_fish[idx] = total_fish[idx-1] + births[idx]
    print(births)
    print(total_fish)

if __name__ == "__main__":
    print("start")
    main()