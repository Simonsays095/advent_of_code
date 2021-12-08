import numpy as np
import matplotlib.pyplot as plt


def whittle_options(known):
    '''
    remove known wires from other wires
    '''
    deduced = [val for val in known.values() if len(val) == 1]
    for key, value in known.items():
        if len(value) == 1: continue
        for d in deduced:
            if d in value:
                value = value.replace(d, "")
        known[key] = value
    return known


def reduce_to(valid, options):
    for char in valid:
        if char not in options:
            valid = valid.replace(char, "")
    return valid


def deduce_wiring(displays):
    known_wires = {
        'a': 'abcdefg',
        'b': 'abcdefg',
        'c': 'abcdefg',
        'd': 'abcdefg',
        'e': 'abcdefg',
        'f': 'abcdefg',
        'g': 'abcdefg',
    }
    segs_on_by_num = [
        "",
        "",
        'cf',
        'acf',
        'bcdf',
        'abcdefg',
        'abcdefg',
        'abcdefg'
    ]
    segs_off_by_num = [
        "",
        "cde",
        'bcef',
        'aeg',
        'bdeg',
        'abdeg',
        'abcdefg',
        'abcdefg'
    ]
    for num in displays:
        num_on = len(num)
        # Narrow down the 'on' segments
        on_options = segs_on_by_num[num_on]
        for segment in num:
            known_wires[segment] = reduce_to(known_wires[segment], on_options)
        # Narrow down the 'off' segments
        off_options = segs_off_by_num[7-num_on]
        for segment in set('abcdefg') - set(num):
            known_wires[segment] = reduce_to(known_wires[segment], off_options)
    known_wires = whittle_options(known_wires)
    if any([len(val) > 1 for val in known_wires.values()]):
        raise ValueError("Cannot determine a solution")
    return known_wires


def rewire(display, wiring):
    out = []
    for idx, segment in enumerate(display):
        out.append(wiring[segment])
    display = "".join(out)
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