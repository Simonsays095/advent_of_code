#include "../utils.h"
#include <set>
#include <iostream>
#include <cstdlib>

// I'm using windows...
#define ENDLINE "\r\n"

#define GALAXY '#'

struct point_t {
    point_t(size_t x, size_t y) : x(x), y(y) {};
    int64_t x, y;
    std::string str() {
        std::ostringstream ss;
        ss << "(" << x << ", " << y << ")";
        return ss.str();
    }
};

int main() {
    std::string fileContents = utils::ReadFile("part1.input");
    auto lines = utils::split(fileContents, ENDLINE);

    std::vector<point_t> galaxies;
    std::set<size_t> regular_rows;
    std::set<size_t> regular_cols;
    for(size_t row = 0; row < lines.size(); row++) {
        std::string &line = lines[row];
        for(size_t col = 0; col < line.size(); col++) {
            char val = line[col];
            if (val == GALAXY) {
                galaxies.emplace_back(col, row);
                regular_rows.insert(row);
                regular_cols.insert(col);
            }
        }
    }

    // Expand coordinates of galaxies for each expanded row/column
    for(int row = lines.size(); row >= 0; row--) {
        if (regular_rows.find(row) == regular_rows.end()) {
            for(point_t &galaxy : galaxies) {
                if (galaxy.y > row) galaxy.y++;
            }
        }
    }
    for(int col = lines[0].size(); col >= 0; col--) {
        if (regular_cols.find(col) == regular_cols.end()) {
            for(point_t &galaxy : galaxies) {
                if (galaxy.x > col) galaxy.x++;
            }
        }
    }

    // Compute distance
    size_t sum = 0;
    for (size_t i = 1; i < galaxies.size(); i++) {
        point_t &gal_i = galaxies[i];
        for (size_t j = 0; j < i ; j++) {
            point_t &gal_j = galaxies[j];
            size_t x_dist = std::abs(gal_i.x - gal_j.x);
            size_t y_dist = std::abs(gal_i.y - gal_j.y);
            sum += x_dist + y_dist;
        }
    }
    std::cout << "Sum: " << sum << std::endl;

    return EXIT_SUCCESS;
}