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

    def apply_number(self, num):
        self.found_nums[self.nums == num] = 1

    def is_bingo(self):
        # Check rows
        for row in range(self.size):
            if all(self.found_nums[row] == 1):
                return True
        # Check columns
        for col in range(self.size):
            if all(self.found_nums[:,col] == 1):
                return True
        return False

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
    # boards = 
    # print(draw_order)
    print([board.nums for board in boards])

    found_bingo = False
    for num in draw_order:
        num = int(num)
        print(f"Checking number {num}")
        for board in boards:
            board.apply_number(num)
            if board.is_bingo():
                found_bingo = True
                break
        if found_bingo:
            break
    print(board.nums)
    print(board.found_nums)

    # Calculate score
    print(board.nums*(1-board.found_nums))
    print(np.sum(board.nums*(1-board.found_nums))*num)



if __name__ == "__main__":
    main()