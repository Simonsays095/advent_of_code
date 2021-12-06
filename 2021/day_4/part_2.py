import numpy as np
import matplotlib.pyplot as plt

class Bingo_board:
    def __init__(self, size, nums:np.ndarray = None):
        self.size = size
        if nums is None:
            self.nums = np.full((size,size), -1)
        else:
            self.nums = nums
        self.found_nums = np.zeros((size,size))
        self.bingo = False
        self.num_guesses = 0

    def apply_number(self, num):
        self.found_nums[self.nums == num] = 1
        self.score = np.sum(self.nums*(1-self.found_nums))*num
        self.num_guesses += 1
        self.set_bingo()

    def set_bingo(self):
        # Check rows
        for row in range(self.size):
            if all(self.found_nums[row] == 1):
                self.bingo = True
                return self.bingo
        # Check columns
        for col in range(self.size):
            if all(self.found_nums[:,col] == 1):
                self.bingo = True
                return self.bingo
        self.bingo = False
        return self.bingo


def main():
    # Load input and save boards/draw order
    with open("input", 'r') as f:
        boards = f.read().splitlines()
        print(boards)
    draw_order = boards.pop(0)
    draw_order = draw_order.split(',')
    boards.pop(0)  # Empty line
    boards += [""]
    boards = [[int(x) for x in board.split()] for board in boards if board != ""]
    size = len(boards[0])
    num_boards = len(boards)//size
    boards = np.split(np.asarray(boards), num_boards)
    boards = [Bingo_board(size, nums) for nums in boards]
    
    print(size, num_boards)
    print([board.nums for board in boards])

    last_board = False
    for num in draw_order:
        num = int(num)
        print(f"Checking number {num}")
        for board in boards:
            if board.bingo:
                continue
            board.apply_number(num)
        if last_board:
            break
    print(len(boards))
    print([board.score for board in boards])
    print([board.num_guesses for board in boards])
    max_guesses = np.argmax([board.num_guesses for board in boards])
    print(boards[max_guesses].num_guesses)
    print(boards[max_guesses].nums)
    print(boards[max_guesses].found_nums)
    print(boards[max_guesses].score)


if __name__ == "__main__":
    main()