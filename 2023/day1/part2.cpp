#include "../utils.h"
#include <cstdlib>
#include <cctype>
#include <unordered_map>
#include <limits>

// I'm using windows...
#define ENDLINE "\r\n"

inline int to_int(char x) {
    return x - '0';
}

// Include the first/last digits, in case they're shared by a neighbor such as oneight (18)
std::unordered_map<std::string, std::string> str_digits = {
    {"one", "o1e"},
    {"two", "t2o"},
    {"three", "t3e"},
    {"four", "f4r"},
    {"five", "f5e"},
    {"six", "s6x"},
    {"seven", "s7n"},
    {"eight", "e8t"},
    {"nine", "n9e"},
};

int main () {
    std::string fileContents = utils::ReadFile("part1.input");
    auto lines = utils::split(fileContents, ENDLINE);

    int val = 0;
    for (std::string line : lines) {
        int calibration = 0;

        // Normalize by converting string digits to actual digits
        // - Check for the position of each digit in the string
        // - Replace the digit with the smallest position
        // (Might just be able to do the same method as part 1, after the above map trick)
        bool founddigit = false;
        do {
            founddigit = false;
            std::vector<std::pair<std::string, int>> positions;
            for (const auto &it : str_digits) {
                size_t pos = line.find(it.first);
                if (pos != std::string::npos) {
                    positions.emplace_back(it.first, pos);
                }
            }

            // Find the first digit
            size_t minpos = line.size();
            std::string first_string;
            for(const auto &entry : positions) {
                if (entry.second < minpos) {
                    minpos = entry.second;
                    first_string = entry.first;
                }
            }

            if (minpos < line.size()) {
                // Replace this substring with the digit
                line.replace(minpos, first_string.size(), str_digits[first_string]);
                founddigit = true;
            }
        } while (founddigit);

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