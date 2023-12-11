#include "../utils.h"
#include <iostream>
#include <set>
#include <unordered_map>
#include <cassert>

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

class node_t {
public:
    node_t() {
        connections_.resize(dir_t::num_dirs);
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
    const std::vector<node_t *> &connections() const { return connections_; }
    point_t pos() const { return pos_; }
private:
    std::vector<node_t*> connections_;
    point_t pos_;
    char val_;
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

    map_t map(width, height);
    for(size_t y = 0; y < map.height(); y++) {
        for(size_t x = 0; x < map.width(); x++) {
            map.parse(x, y, lines[y][x]);
        }
    }
    for(size_t y = 0; y < map.height(); y++) {
        for(size_t x = 0; x < map.width(); x++) {
            std::cout << map.elem(x, y).get_char();
        }
        std::cout << std::endl;
    }

    // Find the connections to the S cell
    std::vector<point_t> check;
    point_t start_pos = map.start_pos();
    node_t &start_node = map.elem(start_pos.x, start_pos.y);
    for (int y = -1; y < 2; y++) {
        for(int x = -1; x < 2; x++) {
            point_t pos = point_t(start_pos.x + x, start_pos.y + y);
            if (pos.x < 0 || pos.y < 0) continue;
            if (pos.x >= map.width() || pos.y >= map.height()) continue;

            if (map.elem(pos.x, pos.y).is_connected(start_node)) {
                check.emplace_back(pos);
            }
        }
    }

    // Check until we run out of cells to check the distance to
    size_t distance = 1;
    std::unordered_map<point_t, size_t, point_compare_t> dist;
    dist[start_pos] = 0;
    while(check.size() != 0) {
        std::cout << "Shuffling " << check.size() << " elems" << std::endl;
        std::vector<point_t> new_check;
        for(point_t point : check) {
            std::cout << "Checking " << point.x << "/" << point.y << std::endl;
            if (dist.find(point) != dist.end()) continue;

            dist[point] = distance;
            for(node_t *node : map.elem(point.x, point.y).connections()) {
                if (!node) continue; // skip no-connection sides
                std::cout << " - Adding " << node->pos().x << "/" << node->pos().y << " to list" << std::endl;
                new_check.emplace_back(node->pos());
            }
        }
        check = new_check;
        distance += 1;
    }

    size_t max_dist = 0;
    for(auto &it : dist) {
        max_dist = std::max(max_dist, it.second);
    }

    std::cout << "Maximum distance: " << max_dist << std::endl;

    return EXIT_SUCCESS;
}