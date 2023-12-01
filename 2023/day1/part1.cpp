#include "../utils.h"
#include <cstdlib>
#include <cctype>

// I'm using windows...
#define ENDLINE "\r\n"

inline int to_int(char x) {
    return x - '0';
}

int main () {
    std::string fileContents = utils::ReadFile("part1.input");
    auto lines = utils::split(fileContents, ENDLINE);

    int val = 0;
    for (const std::string &line : lines) {
        int calibration = 0;
        // Get the leftmost digit
        for(size_t i = 0; i < line.size(); i++) {
            if (isdigit(line[i])) {
                calibration = 10 * to_int(line[i]);
                break;
            }
        }

        // Get the rightmost digit
        for(int i = line.size(); i >= 0; i--) {
            if (isdigit(line[i])) {
                calibration += to_int(line[i]);
                break;
            }
        }
        printf("Calibration: %d\n", calibration);
        val += calibration;
    }
    printf("Sum: %d\n", val);

    return EXIT_SUCCESS;
}