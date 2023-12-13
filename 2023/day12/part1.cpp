#include "../utils.h"
#include <iostream>
#include <array>

// I'm using windows...
#define ENDLINE "\r\n"

bool check_validity(std::string &row, std::vector<size_t> &sizes) {
    // std::cout << " - checking validity of " << row << " (";
    // for(size_t x : sizes) {
    //     std::cout << x << ",";
    // }
    // std::cout << ")" << std::endl;
    if (sizes.empty()) {
        // Check that the row has no '#'
        for(char x : row) {
            if (x == '#') return false;
        }
        return true;
    }

    std::vector<size_t> left_pad(sizes.size(), 0);
    std::vector<size_t> right_pad(sizes.size(), 0);
    int64_t flex = row.size() - sizes.size() + 1;
    for(size_t i = 0; i < sizes.size(); i++) {
        flex -= sizes[i];
        for(size_t j = 0; j < i; j++) {
            // left side
            left_pad[i] += sizes[j] + 1;
        }
        for(size_t j = i+1; j < sizes.size(); j++) {
            // right side
            right_pad[i] += sizes[j] + 1;
        }
    }

    // Only check the first region
    for (size_t start = 0; start < flex + 1; start++) {
        size_t start_pos = left_pad[0] + start;

        // Must be surrounded by '.' or '?'
        if (start_pos > 0 && row[start_pos-1] == '#') continue;
        if (start_pos+sizes[0] < row.size() && row[start_pos+sizes[0]] == '#') continue;

        // Cannot have a '.' in the region
        bool has_dot = false;
        for (size_t idx = 0; idx < sizes[0]; idx++) {
            if (row[start_pos + idx] == '.') {
                has_dot = true;
                break;
            }
        }
        if (has_dot) continue;

        // Otherwise, this region is good. Pin it here and check the others
        std::string new_row = row;
        for (size_t idx = 0; idx < sizes[0]; idx++) {
            new_row[start_pos + idx] = '.'; // replace positions with '.'
        }
        // set surrounding positions to '.'
        for(size_t idx = 0; idx < start_pos; idx++) {
            if (new_row[idx] == '#') return false; // skipped over some element
            new_row[idx] = '.';
        }
        if (start_pos > 0) new_row[start_pos-1] = '.';
        if (start_pos + sizes[0] < new_row.size()) new_row[start_pos + sizes[0]] = '.';
        std::vector<size_t> new_sizes = sizes;
        new_sizes.erase(new_sizes.begin());
        bool is_valid = check_validity(new_row, new_sizes);
        if (is_valid) return true;
    }

    // If we made it here, we didn't find a valid configuration
    return false;
}

// Recursively solve the problem by pinning each question mark
size_t solve(std::string &row, std::vector<size_t> sizes) {
    // Check if the given data is even valid
    bool is_valid = check_validity(row, sizes);
    std::cout << row << " is valid: " << is_valid << std::endl;
    if (!is_valid) {
        return 0;
    }

    // If there are no '?', there's exactly 1 option
    auto pos = row.find('?');
    if (pos == std::string::npos) {
        return 1;
    }

    // Convert the first '?' and sum other options
    std::array<std::string, 2> options({row, row});
    options[0][pos] = '.';
    options[1][pos] = '#';
    size_t num_options = 0;
    num_options += solve(options[0], sizes);
    num_options += solve(options[1], sizes);

    std::cout << row << " has " << num_options << " options" << std::endl;
    return num_options;
}

int main() {
    std::string fileContents = utils::ReadFile("part1.input");
    auto lines = utils::split(fileContents, ENDLINE);

    size_t sum = 0;
    for (std::string &line : lines) {
        auto parts = utils::split(line, " ");
        std::string row = parts[0];
        std::cout << "Line: " << row << std::endl;

        // Parse region sizes
        auto sizes_str = utils::split(parts[1], ",");
        std::vector<size_t> sizes;
        for(std::string &x : sizes_str) {
            sizes.push_back(stoi(x));
        }

        size_t num_solutions = solve(row, sizes);
        sum += num_solutions;

        std::cout << "Number of solutions: " << num_solutions << std::endl;

    }

    std::cout << "Final answer: " << sum << std::endl;

    return EXIT_SUCCESS;
}