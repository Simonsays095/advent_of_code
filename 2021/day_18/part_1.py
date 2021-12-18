import numpy as np
import matplotlib.pyplot as plt
np.set_printoptions(linewidth=150, suppress=True)

class Pair:
    @staticmethod
    def FromString(pair_str: str):
        # print("Making a new pair")
        pair_str = pair_str[1:-1]  # Remove enclosing []

        # Split string into each half 
        num_open = pair_str[0] == '['
        split = 1
        while num_open > 0:
            if pair_str[split] == '[':
                num_open += 1
            elif pair_str[split] == ']':
                num_open -= 1
            split += 1
        left, right = pair_str[:split], pair_str[split+1:]  #Ignore comma

        # Parse left side
        if left.startswith('['):
            left = Pair.FromString(left)
        else:
            left = int(left)

        # Parse right side
        if right.startswith('['):
            right = Pair.FromString(right)
        else:
            right = int(right)
        return Pair(left, right)

    def __init__(self, left, right):
        self.left = left
        self.parent = None
        if isinstance(left, Pair):
            self.left.parent = self
        self.right = right
        if isinstance(right, Pair):
            self.right.parent = self
        self.SetDepth(0)

    def __str__(self):
        return f"[{str(self.left)},{str(self.right)}]"

    def __add__(self, other):
        ret = Pair(self, other)
        print(f"Sum result: {ret}")
        ret.Reduce()
        print(f"Reduced result: {ret}")
        return ret

    def SetDepth(self, depth: int):
        self.depth = depth
        if isinstance(self.left, Pair):
            self.left.SetDepth(depth + 1)
        if isinstance(self.right, Pair):
            self.right.SetDepth(depth + 1)

    def CheckForExplosions(self):
        if isinstance(self.left, Pair):
            exploded = self.left.CheckForExplosions()
            if exploded:
                return True
                # if self.depth == 0:
                #     return self.Reduce()
                # else:
                #     return True  # Pass back to top to look again
        if isinstance(self.right, Pair):
            exploded = self.right.CheckForExplosions()
            if exploded:
                return True
                # if self.depth == 0:
                #     return self.Reduce()
                # else:
                #     return True  # Pass back to top to look again
        if self.depth >= 4:
            self.Explode()
            return True
        return False

    def Reduce(self):
        print(f"Reducing {self}, ({self.depth})")
        exploded = self.CheckForExplosions()
        if exploded:
            return self.Reduce()
        print(f"Moving on to splitting")
        split = self.CheckForSplitting()
        if split:
            return self.Reduce()
        return True
        
    def CheckForSplitting(self):
        # Recursively check children
        if isinstance(self.left, Pair):
            split = self.left.CheckForSplitting()
            if split:
                return True
        elif self.left >= 10:
            return self.SplitLeft()

        if isinstance(self.right, Pair):
            split = self.right.CheckForSplitting()
            if split:
                return True
        elif self.right >= 10:
            return self.SplitRight()

        return False

    def Contains(self, other):
        if other is self:
            return True
        cont = False
        if isinstance(self.left, Pair):
            cont = self.left.Contains(other)
        if isinstance(self.right, Pair):
            cont = cont or self.right.Contains(other)
        return cont
        

    def Explode(self):
        print(f"Exploding pair {self}")

        # Add self.left to the next pair to the left
        # Traverse up the heirarchy to the next pair to the left
        addLeft = self.parent
        # print(f"Looking at {addLeft} to add the left value ({self.left}) to")
        while isinstance(addLeft.left, Pair) and addLeft.left.Contains(self):
            addLeft = addLeft.parent
            if addLeft is None:
                # print(f"Ignoring left side, already there")
                break
            # print(f"Looking at {addLeft} to add the left value to")
        
        if addLeft is not None:
            if isinstance(addLeft.left, Pair):
                # Move left one branch
                addLeft = addLeft.left
                # print(f"Moving over to {addLeft}")

                # Traverse back down on the right side
                while isinstance(addLeft.right, Pair):
                    addLeft = addLeft.right
                    # print(f"Moving down to {addLeft}")
                addLeft.right += self.left
                # print(f"Altered to {addLeft}")
            else:
                addLeft.left += self.left
                # print(f"Altered to {addLeft}")

        # Add self.right to the next pair to the right
        # Traverse up the heirarchy to the next pair to the right
        addRight = self.parent
        # print(f"Looking at {addRight} to add the right value ({self.right}) to")
        while isinstance(addRight.right, Pair) and addRight.right.Contains(self):
            addRight = addRight.parent
            if addRight is None:
                # print(f"Ignoring right side, already there")
                break
            # print(f"Looking at {addRight} to add the right value to")
        
        if addRight is not None:
            if isinstance(addRight.right, Pair):
                # Move right one branch
                addRight = addRight.right
                # print(f"Moving over to {addRight}")

                # Traverse back down on the left side
                while isinstance(addRight.left, Pair):
                    addRight = addRight.left
                    # print(f"Moving down to {addRight}")
                addRight.left += self.right
                # print(f"Altered to {addRight}")
            else:
                addRight.right += self.right
                # print(f"Altered to {addRight}")

        # Remove self from parent, replacing with 0
        if self is self.parent.left:
            self.parent.left = 0
        else:
            self.parent.right = 0
        # print(f"Parent reset to {self.parent}")
        return True

    def SplitRight(self):
        '''Split the right int into a pair'''
        print(f"Splitting {self.right}")
        left = self.right // 2
        right = self.right - left
        self.right = Pair(left, right)
        self.right.SetDepth(self.depth+1)
        self.right.parent = self
        return True

    def SplitLeft(self):
        '''Split the left int into a pair'''
        print(f"Splitting {self.left}")
        left = self.left // 2
        right = self.left - left
        self.left = Pair(left, right)
        self.left.SetDepth(self.depth+1)
        self.left.parent = self
        return True
    
    def Magnitude(self):
        mag = 0
        if isinstance(self.left, Pair):
            mag += 3*self.left.Magnitude()
        else:
            mag += 3*self.left

        if isinstance(self.right, Pair):
            mag += 2*self.right.Magnitude()
        else:
            mag += 2*self.right
        return mag


def main():
    # Parse input
    with open("input", 'r') as f:
        inp = f.read().splitlines()
    pairs = []
    for pair in inp:
        pairs.append(Pair.FromString(pair))
        print(pairs[-1])
    
    pair_sum = pairs[0]
    for pair in pairs[1:]:
        pair_sum += pair
        print()
    print(f"Final magnitude: {pair_sum.Magnitude()}")


if __name__ == "__main__":
    main()