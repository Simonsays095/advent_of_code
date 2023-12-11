#include "../utils.h"
#include <iostream>
#include <set>
#include <unordered_map>
#include <cassert>
#include <stack>

// I'm using windows...
#define ENDLINE "\r\n"

namespace dir_t {
    size_t north = 0;
    size_t east = 1;
    size_t south = 2;
    size_t west = 3;
    size_t num_dirs = 4;
}

struct point_t {
    point_t() = default;
    point_t(size_t x, size_t y) : x(x), y(y) {};
    bool operator==(const point_t &other) const {
        return x == other.x && y == other.y;
    }
    bool operator<(const point_t &other) const {
        return x < other.x || (x == other.x && y < other.y);
    }
    size_t x, y;
};

struct point_compare_t
{
    // == check for unordered_map
    size_t operator() (const point_t& point) const {
        assert(point.y <= 10000);
        return point.x * 10000 + point.y;
    }
};

enum class region_t {
    interior,
    exterior,
    unknown
};

namespace corner_dir_t {
    size_t nw = 0;
    size_t ne = 1;
    size_t se = 2;
    size_t sw = 3;
}

class node_t {
public:
    static constexpr char empty_val = '.';
    node_t() {
        connections_.resize(dir_t::num_dirs);
        corners_.resize(4);
        for(region_t &region : corners_) {
            region = region_t::unknown;
        }
    }
    void connect(size_t dir, node_t &node) {
        connections_[dir] = &node;
    }
    void set_char(char val) {
        val_ = val;
    }
    void set_pos(point_t pos) { pos_ = pos; }
    char get_char() const { return val_; }
    bool is_connected(node_t &other) {
        for(node_t *node : connections_) {
            if (node == &other) return true;
        }
        return false;
    }
    std::vector<node_t *> &connections() { return connections_; }
    point_t pos() const { return pos_; }
    void clear() {
        connections_.clear();
        connections_.resize(dir_t::num_dirs);
        val_ = empty_val;
    }
    bool is_empty() const { return val_ == empty_val; }
    std::vector<region_t> &corners() { return corners_; }
private:
    std::vector<node_t*> connections_;
    point_t pos_;
    char val_;
    std::vector<region_t> corners_;
};

class map_t {
public:
    map_t(size_t width, size_t height) :width_(width), height_(height) {
        grid.resize(height_);
        for(std::vector<node_t> &row : grid) {
            row.resize(width_);
        }
    }
    size_t width() const { return width_; }
    size_t height() const { return height_; }
    node_t &elem(size_t x, size_t y) { return grid[y][x]; }
    node_t &elem(const point_t &pos) { return grid[pos.y][pos.x]; }
    void parse(size_t x, size_t y, char val) {
        grid[y][x].set_char(val);
        grid[y][x].set_pos(point_t(x, y));
        switch (val) {
            case '.': return;
            case '-':
                grid[y][x].connect(dir_t::east, grid[y][x + 1]);
                grid[y][x].connect(dir_t::west, grid[y][x - 1]);
                break;
            case '|':
                grid[y][x].connect(dir_t::south, grid[y + 1][x]);
                grid[y][x].connect(dir_t::north, grid[y - 1][x]);
                break;
            case '7':
                grid[y][x].connect(dir_t::south, grid[y + 1][x]);
                grid[y][x].connect(dir_t::west, grid[y][x - 1]);
                break;
            case 'J':
                grid[y][x].connect(dir_t::north, grid[y - 1][x]);
                grid[y][x].connect(dir_t::west, grid[y][x - 1]);
                break;
            case 'L':
                grid[y][x].connect(dir_t::north, grid[y - 1][x]);
                grid[y][x].connect(dir_t::east, grid[y][x + 1]);
                break;
            case 'F':
                grid[y][x].connect(dir_t::south, grid[y + 1][x]);
                grid[y][x].connect(dir_t::east, grid[y][x + 1]);
                break;
            case 'S':
                starting_pos = point_t(x, y);
                break;
        }
    }
    point_t start_pos() const { return starting_pos; }
    void print() const {
        for(size_t y = 0; y < height_; y++) {
            for(size_t x = 0; x < width_; x++) {
                std::cout << grid[y][x].get_char();
            }
            std::cout << std::endl;
        }
    }
    bool is_pos_valid(const point_t &pos) {
        if (pos.x < 0 || pos.y < 0) return false;
        if (pos.x >= width_ || pos.y >= height_) return false;
        return true;
    }
private:
    size_t width_, height_;
    std::vector<std::vector<node_t>> grid;
    point_t starting_pos;
};

int main() {
    std::string fileContents = utils::ReadFile("part1.input");
    auto lines = utils::split(fileContents, ENDLINE);
    size_t height = lines.size();
    size_t width = lines[0].size();

    map_t map(width+2, height+2);
    for(size_t y = 0; y < map.height(); y++) {
        for(size_t x = 0; x < map.width(); x++) {
            // Handle zeroed edges
            if (y == 0 || x == 0 || y == map.height()-1 || x == map.width()-1) {
                map.parse(x, y, node_t::empty_val);
                continue;
            }
            map.parse(x, y, lines[y-1][x-1]);
        }
    }
    map.print();

    std::set<point_t> check;
    point_t start_pos = map.start_pos();
    node_t &start_node = map.elem(start_pos.x, start_pos.y);
    for (int y = -1; y < 2; y++) {
        for(int x = -1; x < 2; x++) {
            point_t pos = point_t(start_pos.x + x, start_pos.y + y);
            if (pos.x < 0 || pos.y < 0) continue;
            if (pos.x >= map.width() || pos.y >= map.height()) continue;

            if (map.elem(pos.x, pos.y).is_connected(start_node)) {
                size_t back;
                if (x == -1 && y ==  0) back = dir_t::west;
                if (x ==  0 && y ==  1) back = dir_t::south;
                if (x ==  0 && y == -1) back = dir_t::north;
                if (x ==  1 && y ==  0) back = dir_t::east;
                start_node.connections()[back] = &map.elem(pos.x, pos.y);
                check.insert(pos);
            }
        }
    }
    
    // Traverse the path, add positions to a set
    std::set<point_t> path_pos;
    path_pos.insert(start_pos);
    while (check.size() > 0) {
        std::set<point_t> new_check;
        for(point_t pos : check) {
            path_pos.insert(pos);
            for(node_t *node : map.elem(pos.x, pos.y).connections()) {
                if (!node) continue;
                if (path_pos.find(node->pos()) != path_pos.end()) continue;

                new_check.insert(node->pos());
            }
        }
        check = new_check;
    }

    // Clear non-path segments to '.'
    for(size_t y = 0; y < map.height(); y++) {
        for(size_t x = 0; x < map.width(); x++) {
            point_t pos(x, y);
            if (path_pos.find(pos) == path_pos.end()) {
                map.elem(x, y).clear();
            }
        }
    }

    // Print the new map
    std::cout << std::endl;
    map.print();

    std::cout << path_pos.size() << " path segments" << std::endl;

    // We expanded, so (0,0) is always exterior
    point_t ext(0, 0);
    map.elem(ext).corners()[corner_dir_t::nw] = region_t::exterior;
    map.elem(ext).corners()[corner_dir_t::ne] = region_t::exterior;
    map.elem(ext).corners()[corner_dir_t::se] = region_t::exterior;
    map.elem(ext).corners()[corner_dir_t::sw] = region_t::exterior;

    // Loop over each position
    size_t num_interior = 0;
    for(size_t y = 0; y < map.height(); y++) {
        for(size_t x = 0; x < map.width(); x++) {
            point_t pos(x, y);
            std::vector<region_t> &corners = map.elem(pos).corners();
            // First row: has to be exterior
            if (y == 0) {
                corners[corner_dir_t::nw] = region_t::exterior;
                corners[corner_dir_t::ne] = region_t::exterior;
                corners[corner_dir_t::se] = region_t::exterior;
                corners[corner_dir_t::sw] = region_t::exterior;
                map.elem(pos).set_char('O');
                continue;
            }

            // First column: has to be exterior
            if (x == 0) {
                corners[corner_dir_t::nw] = region_t::exterior;
                corners[corner_dir_t::ne] = region_t::exterior;
                corners[corner_dir_t::se] = region_t::exterior;
                corners[corner_dir_t::sw] = region_t::exterior;
                map.elem(pos).set_char('O');
                continue;
            }

            // Flood in from above and to the left
            node_t north_node = map.elem(pos.x, pos.y-1);
            node_t west_node = map.elem(pos.x-1, pos.y);
            corners[corner_dir_t::nw] = north_node.corners()[corner_dir_t::sw];
            corners[corner_dir_t::ne] = north_node.corners()[corner_dir_t::se];
            corners[corner_dir_t::sw] = west_node.corners()[corner_dir_t::se];

            // Flood internally to the last corner
            if (!map.elem(pos).connections()[dir_t::east]) {
                corners[corner_dir_t::se] = corners[corner_dir_t::ne];
            } else if (!map.elem(pos).connections()[dir_t::south]) {
                corners[corner_dir_t::se] = corners[corner_dir_t::sw];
            } else {
                // It must be the opposite of the other corners
                corners[corner_dir_t::se] = (corners[corner_dir_t::sw] == region_t::interior ? region_t::exterior : region_t::interior);
            }

            // Count as interior if all 4 corners are interior
            bool all_interior = true;
            bool all_exterior = true;
            for(size_t i = 0; i < 4; i++) {
                if (corners[i] == region_t::exterior) all_interior = false;
                if (corners[i] == region_t::interior) all_exterior = false;
            }
            if (all_interior) {
                num_interior++;
                map.elem(pos).set_char('I');
            }
            if (all_exterior) {
                map.elem(pos).set_char('O');
            }
        }
    }
    map.print();
    std::cout << "Inner elements: " << num_interior << std::endl;

    return EXIT_SUCCESS;
}