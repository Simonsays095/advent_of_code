import numpy as np
import matplotlib.pyplot as plt

# 0: abcefg
# 1: cf
# 2: acdeg
# 3: 1cdfg
# 4: bcdf
# 5: abdfg
# 6: abdefg
# 7: acf
# 8: abcdefg
# 9: abcdfg

# 7 on -> 8
# 6 on -> 0/6/9
# 5 on -> 2/3/5
# 4 on -> 4
# 3 on -> 7
# 2 on -> 1

def whittle_options(known, depth=0):
    if depth >= 3:
        return known
    options = "".join(known.values())
    print(options)
    edited = False  # Recursive
    for key, value in known.items():
        for char in value:
            if options.count(char) == 1:
                known[key] = char
                edited = True
                break
    print("After whittling:", known)
    if edited:
        return whittle_options(known, depth+1)
    return known

def deduce_wiring(segments):
    known_wires = {
        'a' = 'abcdefg',
        'b' = 'abcdefg',
        'c' = 'abcdefg',
        'd' = 'abcdefg',
        'e' = 'abcdefg',
        'f' = 'abcdefg',
        'g' = 'abcdefg',
    }
    segs_on = [len(seg) for seg in segments]
    print(segments, segs_on)
    # If 2 and 3 segments present, difference is 'a' wire
    if 2 in segs_on and 3 in segs_on:
        two_elem = segs_on.index(2)
        three_elem = segs_on.index(3)
        a = set(segments[three_elem]) - set(segments[two_elem])
        known_wires['a'] = a
    
    print(known_wires)
    known_wires = whittle_options(known_wires)
    print(known_wires)
    
    # if 4 and 7 segments present, differences are a/e/g

def main():
    with open("sample", 'r') as f:
        inp = f.read().splitlines()
    
    patterns = []
    outputs = []
    for display in inp:
        pattern, output = display.split('|')
        patterns.append(pattern)
        outputs.append(output)
    patterns = [pattern.split() for pattern in patterns]
    for pattern in patterns:
        deduce_wiring(pattern)
    outputs = [output.split() for output in outputs]

    num_segs = [[len(y) for y in x] for x in outputs]
    print(num_segs)
    print(sum([sum([1 for x in y if x != 5 and x != 6]) for y in num_segs]))
    

if __name__ == "__main__":
    main()