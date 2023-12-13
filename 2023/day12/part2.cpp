#include "../utils.h"
#include <iostream>
#include <array>
#include <functional>
#include <unordered_map>
#include <cassert>

// I'm using windows...
#define ENDLINE "\r\n"

// source: https://stackoverflow.com/questions/2590677/how-do-i-combine-hash-values-in-c0x
inline size_t hash_combine(size_t seed, size_t other) {
    return other + 0x9e3779b9 + (seed<<6) + (seed>>2);
}

size_t hash(std::string &row, std::vector<size_t> &sizes) {
    size_t size_hash = 0;
    for(size_t x : sizes) {
        size_hash = hash_combine(size_hash, x);
    }
    return hash_combine(std::hash<std::string>{}(row), size_hash);
}

struct phase_space_point_t {
    phase_space_point_t() = default;
    phase_space_point_t(size_t row_idx, size_t size_idx, size_t region_idx) : row_idx(row_idx), size_idx(size_idx), region_idx(region_idx) {}
    size_t row_idx = 0;
    size_t size_idx = 0;
    size_t region_idx = 0;
    bool operator==(const phase_space_point_t &other) const {
        return (row_idx == other.row_idx && size_idx == other.size_idx && region_idx == other.region_idx);
    }
    std::string str() const {
        std::ostringstream ss;
        ss << "(" << row_idx << "," << size_idx << "," << region_idx << ")";
        return ss.str();
    }
};

struct point_compare_t
{
    // == check for unordered_map
    size_t operator() (const phase_space_point_t& point) const {
        size_t hash = hash_combine(point.row_idx, point.size_idx);
        return hash_combine(hash, point.region_idx);
    }
};

std::unordered_map<phase_space_point_t, size_t, point_compare_t> count_cache;

// Inspiration: https://github.com/jonathanpaulson/AdventOfCode/blob/master/2023/12.py
size_t solve(std::string &row, std::vector<size_t> &sizes, size_t depth = 0, phase_space_point_t point = {}) {
    if (depth < 1) {
        std::string print_str = row;
        std::cout << "Solving " << print_str.replace(0, point.row_idx, point.row_idx, '.') << std::endl;
    }
    if (count_cache.find(point) != count_cache.end()) {
        return count_cache[point];
    }
    if (point.row_idx == row.size()) {
        // We're done checking - either it's valid (we used all the regions) or it's not
        if (point.size_idx == sizes.size() && point.region_idx == 0) {
            // -- all regions consumed
            return 1;
        }
        if (point.size_idx == sizes.size()-1 && point.region_idx == sizes[point.size_idx]) {
            // -- We're on the last char of the last region, it's valid
            return 1;
        }
        // -- The row is consumed, but we have more regions remaining, this is invalid
        return 0;
    }

    // Check if this char is valid given the state
    char x = row[point.row_idx];
    if (x == '#') {
        // Move on: one further in the region
        phase_space_point_t new_point = point;
        new_point.row_idx++;
        new_point.region_idx++;
        size_t num = solve(row, sizes, depth+1, new_point);
        count_cache[point] = num;
        return num;
    } else if (x == '.') {
        if (point.region_idx == 0) {
            // Move on: one further in row
            phase_space_point_t new_point = point;
            new_point.row_idx++;
            size_t num = solve(row, sizes, depth+1, new_point);
            count_cache[point] = num;
            return num;
        }
        if (point.size_idx < sizes.size() && point.region_idx == sizes[point.size_idx]) {
            // Move on: to next region
            phase_space_point_t new_point(point.row_idx+1, point.size_idx+1, 0);
            size_t num = solve(row, sizes, depth+1, new_point);
            count_cache[point] = num;
            return num;
        }
    } else { // x == '?'
        // Sum number of answers like it was a '.' or a '#'
        size_t num_solutions = 0;
        // Assume '#'
        size_t hashtag_solutions = 0;
        size_t dot_solutions = 0;
        phase_space_point_t new_point = point;
        new_point.row_idx++;
        new_point.region_idx++;
        hashtag_solutions = solve(row, sizes, depth+1, new_point);
        num_solutions += hashtag_solutions;

        // Assume '.'
        if (point.region_idx == 0) {
            // Move on: one further in row
            new_point = point;
            new_point.row_idx++;
            dot_solutions += solve(row, sizes, depth+1, new_point);
        }
        if (point.size_idx < sizes.size() && point.region_idx == sizes[point.size_idx]) {
            // Move on: to next region
            new_point = phase_space_point_t(point.row_idx+1, point.size_idx+1, 0);
            dot_solutions += solve(row, sizes, depth+1, new_point);
        }
        num_solutions += dot_solutions;
        count_cache[point] = num_solutions;
        std::string print_str = row;
        // std::cout << std::string(depth, ' ') << "Return: " << print_str.replace(0, point.row_idx, point.row_idx, '.') << std::endl;
        // std::cout << std::string(depth, ' ') << " -- ? result " << point.str() << ": " << hashtag_solutions << " + " << dot_solutions << " = " << num_solutions << std::endl;
        return num_solutions;
    }

    // unreachable
    return 0;
}

int main() {
    std::string fileContents = utils::ReadFile("part1.input");
    auto lines = utils::split(fileContents, ENDLINE);

    size_t sum = 0;
    for (std::string &line : lines) {
        auto parts = utils::split(line, " ");
        std::string row = parts[0];
        size_t row_size = row.size();
        row.resize(row_size*5+4);
        for(size_t idx = row_size; idx < row.size(); idx++) {
            size_t i = idx % (row_size+1);
            if (i == row_size) row[idx] = '?';
            else row[idx] = row[i];
        }
        std::cout << "Line: " << row << std::endl;

        // Parse region sizes
        auto sizes_str = utils::split(parts[1], ",");
        std::vector<size_t> sizes;
        for(std::string &x : sizes_str) {
            sizes.push_back(stoi(x));
        }
        size_t num_sizes = sizes.size();
        sizes.resize(num_sizes*5);
        for(size_t idx = num_sizes; idx < sizes.size(); idx++) {
            size_t i = idx % num_sizes;
            sizes[idx] = sizes[i];
        }

        count_cache.clear();
        size_t num_solutions = solve(row, sizes);
        sum += num_solutions;

        std::cout << "Number of solutions: " << num_solutions << std::endl;

    }

    std::cout << "Final answer: " << sum << std::endl;

    return EXIT_SUCCESS;
}