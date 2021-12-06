import numpy as np
import matplotlib.pyplot as plt

def calculate_gamma(diagnostics):
    # Figure out gamma
    bits = len(diagnostics[0])
    gamma = ""
    avg = np.zeros((bits,))
    for idx in range(bits):
        chars = diagnostics[:,idx]
        avg[idx] = np.average(list(map(int, chars)))
        if avg[idx] > 0.5:
            gamma += '1'
        else:
            gamma += '0'
    return gamma, avg

def calculate_life_support(diagnostics, criteria):
    num_bits = diagnostics.shape[1]
    for idx in range(num_bits):
        diagnostics = diagnostics[criteria(diagnostics[:,idx])]
        if diagnostics.shape[0] == 1:
            diagnostics = diagnostics[0]
            print(f"Found a solution:", diagnostics)
            break
    else:
        raise ValueError("No valid diagnostic found")
    diagnostics = "".join(diagnostics)
    return diagnostics

def oxy_criteria(bit_list: np.ndarray):
    # Most common value
    bit_list = bit_list.astype(np.int64)
    print(bit_list)
    counts = np.bincount(bit_list)
    if len(counts) == 2 and counts[1] == counts[0]:
        print("Equal numbers!!")
        mode = 1
    else:
        mode = np.argmax(counts)
    print(mode)
    valid = np.where(bit_list == mode)[0]
    print(valid)
    print("")
    return valid

def scrubber_criteria(bit_list: np.ndarray):
    # Least common value
    bit_list = bit_list.astype(np.int64)
    counts = np.bincount(bit_list)
    print(bit_list)
    if len(counts) == 2 and counts[1] == counts[0]:
        print("Equal numbers!!")
        mode = 0
    else:
        mode = np.argmin(counts)
    print(mode)
    valid = np.where(bit_list == mode)[0]
    print(valid)
    print("")
    return valid

def calculate(value, diagnostics):
    if value == 'gamma':
        return calculate_gamma(diagnostics)
    if value == 'oxy_gen':
        diagnostics = diagnostics.copy()
        return calculate_life_support(diagnostics, oxy_criteria)
    if value == 'scrubber':
        diagnostics = diagnostics.copy()
        return calculate_life_support(diagnostics, scrubber_criteria)
    raise ValueError(f"Invalid value, {value}")
    
def main():
    with open("input", 'r') as f:
        diagnostics = f.read().splitlines()
    diagnostics = np.asarray([list(d) for d in diagnostics])
    num_diagnostics = len(diagnostics)
    bits = len(diagnostics[0])

    gamma, avg = calculate("gamma", diagnostics)
    oxy = calculate("oxy_gen", diagnostics)
    scrubber = calculate("scrubber", diagnostics)
    oxy = int(oxy, 2)
    scrubber = int(scrubber, 2)

    # Convert gamma to epsilon
    epsilon = gamma.replace('1', 'x')
    epsilon = epsilon.replace('0', '1')
    epsilon = epsilon.replace('x', '0')
    gamma = int(gamma, 2)
    epsilon = int(epsilon, 2)
    print(oxy, scrubber)
    print(gamma, epsilon)
    print("")
    print(oxy*scrubber)
    print(gamma*epsilon)

    fig, ax = plt.subplots()
    equal = num_diagnostics / 2
    ax.plot([-0.5,bits-0.5], [equal,equal], color='red')
    ax.bar(range(avg.shape[0]), avg*num_diagnostics)
    ax.set_ylim(avg.min()*0.95*num_diagnostics, avg.max()*1.05*num_diagnostics)
    plt.show()


if __name__ == "__main__":
    main()