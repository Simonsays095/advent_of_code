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
    print(f"Whittling at recursion level {depth}")
    print(f"starting at {known}")
    if depth >= 3:
        print('recursion depth reached')
        return known
    if all([len(val) == 1 for val in known.values()]):
        return known # All are known
    edited = False  # Recursive
    # remove known wires from other wires
    deduced = [val for val in known.values() if len(val) == 1]
    print(deduced)
    for key, value in known.items():
        if len(value) == 1: continue
        for d in deduced:
            if d in value:
                value = value.replace(d, "")
                print("removing option")
                edited = True
        known[key] = value
    print(known)
    # Remove extra options when one wire only has one interpretation
    options = "".join(known.values())
    for key, value in known.items():
        for char in value:
            if options.count(char) == 1 and len(value) != 1:
                known[key] = char
                edited = True
                break
    print("After whittling:", known)
    if edited:
        return whittle_options(known, depth+1)
    return known

def reduce_to(valid, options):
    for char in valid:
        if char not in options:
            valid = valid.replace(char, "")
    return valid

def deduce_wiring(segments):
    known_wires = {
        'a': 'abcdefg',
        'b': 'abcdefg',
        'c': 'abcdefg',
        'd': 'abcdefg',
        'e': 'abcdefg',
        'f': 'abcdefg',
        'g': 'abcdefg',
    }
    segs_on = [len(seg) for seg in segments]
    # print(segments, segs_on)
    # If 2 and 3 segments present, difference is 'a' wire
    if 2 in segs_on and 3 in segs_on:
        two_elem = segs_on.index(2)
        three_elem = segs_on.index(3)
        a = set(segments[three_elem]) - set(segments[two_elem])
        a = a.pop()
        known_wires['a'] = a
        cf = segments[three_elem].replace(a,"")
        known_wires['c'] = reduce_to(known_wires['c'], cf)
        known_wires['f'] = reduce_to(known_wires['f'], cf)
    
    # print(known_wires)
    # known_wires = whittle_options(known_wires)
    # print(known_wires)
    
    # If 2 and 4 segments present, difference is b/d wires
    if 2 in segs_on and 4 in segs_on:
        two_elem = segs_on.index(2)
        four_elem = segs_on.index(4)
        bd = set(segments[four_elem]) - set(segments[two_elem])
        bd = "".join(bd)
        print(bd)
        known_wires['b'] = reduce_to(known_wires['b'], bd)
        known_wires['d'] = reduce_to(known_wires['d'], bd)

    # if 4 and 7 segments present, differences are a/e/g
    if 4 in segs_on and 7 in segs_on:
        four_elem = segs_on.index(4)
        seven_elem = segs_on.index(7)
        aeg = set(segments[seven_elem]) - set(segments[four_elem])
        aeg = "".join(aeg)
        print(aeg)
        known_wires['a'] = reduce_to(known_wires['a'], aeg)
        known_wires['e'] = reduce_to(known_wires['e'], aeg)
        known_wires['g'] = reduce_to(known_wires['g'], aeg)

    # if 6 segments present, the one that's off is c/d/e
    # off should be nowhere except c/d/e
    if 6 in segs_on:
        print('6 segs')
        elems = [segments[idx] for idx, elem in enumerate(segs_on) if elem == 6]
        off = ["".join(set('abcdefg') - set(elem)) for elem in elems]
        cde = "".join(set("".join(off)))  # unique characters
        known_wires['c'] = reduce_to(known_wires['c'], cde)
        known_wires['d'] = reduce_to(known_wires['d'], cde)
        known_wires['e'] = reduce_to(known_wires['e'], cde)
    
    # If 5 segments present, only b/c/e/f can be off
    # those should not be options except for b/c/e/f
    if 5 in segs_on:
        elems = [segments[idx] for idx, elem in enumerate(segs_on) if elem == 5]
        off = ["".join(set('abcdefg') - set(elem)) for elem in elems]
        bcef = "".join(set("".join(off)))  # unique characters
        known_wires['b'] = reduce_to(known_wires['b'], bcef)
        known_wires['c'] = reduce_to(known_wires['c'], bcef)
        known_wires['e'] = reduce_to(known_wires['e'], bcef)
        known_wires['f'] = reduce_to(known_wires['f'], bcef)
    known_wires = whittle_options(known_wires)
    print(known_wires)
    return known_wires

def rewire(display, wiring):
    print("input display:", display)
    out = []
    for idx, segment in enumerate(display):
        # reverse dictionary mapping.... blargh
        out.append(list(wiring.keys())[list(wiring.values()).index(segment)])
    display = "".join(out)
    print("Actual display:", display)
    return display


def get_displayed_num(display):
    nums = [
        {'a','b','c','e','f','g'},
        {'c','f'},
        {'a','c','d','e','g'},
        {'a','c','d','f','g'},
        {'b','c','d','f'},
        {'a','b','d','f','g'},
        {'a','b','d','e','f','g'},
        {'a','c','f'},
        {'a','b','c','d','e','f','g'},
        {'a','b','c','d','f','g'}
    ]
    display = set(display)
    return str(nums.index(display))

def main():
    with open("input", 'r') as f:
        inp = f.read().splitlines()
    
    patterns = []
    outputs = []
    for display in inp:
        pattern, output = display.split('|')
        patterns.append(pattern)
        outputs.append(output)
    patterns = [pattern.split() for pattern in patterns]
    outputs = [output.split() for output in outputs]
    displayed_num = []
    for pattern, output in zip(patterns, outputs):
        wiring = deduce_wiring(pattern)
        output = [rewire(display, wiring) for display in output]
        nums = [get_displayed_num(display) for display in output]
        displayed_num.append(int("".join(nums)))

    print(sum(displayed_num))
    

if __name__ == "__main__":
    main()