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
    int64_t front() const {
        return vals.front();
    }
private:
    std::vector<int64_t> vals;
};

int main() {
    std::string fileContents = utils::ReadFile("part1.input");
    auto lines = utils::split(fileContents, ENDLINE);

    int64_t sum = 0;
    for (std::string &line : lines) {
        printf("%s\n", line.c_str());
        auto parts = utils::split(line, " ");
        std::vector<sequence> sequences;

        // Seed the initial sequence
        sequence &seq = sequences.emplace_back();
        for (std::string &val : parts) {
            seq.append(stol(val));
        }

        // Step until you get a zero sequence
        while(!sequences.back().is_zero()) {
            sequences.emplace_back(sequences.back().step());
        }

        // Figure out the previous value
        int64_t val = 0;
        for(auto it = sequences.rbegin(); it < sequences.rend(); it++) {
            val = it->front() - val;
        }
        std::cout << "value: " << val << std::endl;
        sum += val;
    }
    std::cout << "Final: " << sum << std::endl;

    return EXIT_SUCCESS;
}