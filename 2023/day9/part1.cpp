#include "../utils.h"
#include <iostream>

// I'm using windows...
#define ENDLINE "\r\n"

class sequence {
public:
    void append(int64_t val) {
        vals.emplace_back(val);
    }
    sequence step() const {
        sequence res;
        for(size_t i = 1; i < vals.size(); i++) {
            res.append(vals[i] - vals[i-1]);
        }
        return res;
    }
    bool is_zero() const {
        for (int64_t val : vals) {
            if (val != 0) return false;
        }
        return true;
    }
    int64_t back() const {
        return vals.back();
    }
private:
    std::vector<int64_t> vals;
};

int main() {
    std::string fileContents = utils::ReadFile("part1.input");
    auto lines = utils::split(fileContents, ENDLINE);

    size_t sum = 0;
    for (std::string &line : lines) {
        printf("%s\n", line.c_str());
        auto parts = utils::split(line, " ");
        std::vector<sequence> sequences;

        // Seed the initial sequence
        sequences.emplace_back();
        sequence &seq = sequences.back();
        for (std::string &val : parts) {
            seq.append(stol(val));
        }

        // Step until you get a zero sequence
        while(!sequences.back().is_zero()) {
            sequences.emplace_back(sequences.back().step());
        }

        // Figure out the last value
        size_t val = 0;
        for(auto it = sequences.rbegin(); it < sequences.rend(); it++) {
            val += it->back();
        }
        printf("value: %zu\n", val);
        sum += val;
    }
    std::cout << "Final: " << sum << std::endl;

    return EXIT_SUCCESS;
}