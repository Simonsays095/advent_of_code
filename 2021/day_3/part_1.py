import numpy as np
import matplotlib.pyplot as plt

def main():
    with open("input", 'r') as f:
        diagnostics = f.read().splitlines()
    diagnostics = np.asarray([list(d) for d in diagnostics])
    num_diagnostics = len(diagnostics)
    bits = len(diagnostics[0])

    # Figure out gamma
    gamma = ""
    avg = np.zeros((bits,))
    for idx in range(bits):
        chars = diagnostics[:,idx]
        avg[idx] = np.average(list(map(int, chars)))
        if avg[idx] > 0.5:
            gamma += '1'
        else:
            gamma += '0'

    # Convert gamma to epsilon
    epsilon = gamma.replace('1', 'x')
    epsilon = epsilon.replace('0', '1')
    epsilon = epsilon.replace('x', '0')
    gamma = int(gamma, 2)
    epsilon = int(epsilon, 2)
    print(gamma, epsilon)
    print(gamma*epsilon)

    fig, ax = plt.subplots()
    equal = num_diagnostics / 2
    ax.plot([-0.5,bits-0.5], [equal,equal], color='red')
    ax.bar(range(avg.shape[0]), avg*num_diagnostics)
    ax.set_ylim(avg.min()*0.95*num_diagnostics, avg.max()*1.05*num_diagnostics)
    plt.show()


if __name__ == "__main__":
    main()