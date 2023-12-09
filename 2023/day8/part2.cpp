#include "../utils.h"
#include <iostream>
#include <unordered_map>
#include <set>

// I'm using windows...
#define ENDLINE "\r\n"

struct route {
    route() = default;
    route(std::string &left, std::string &right) : left(left), right(right) {}
    std::string left;
    std::string right;
};

struct state {
    state(size_t path_idx, size_t time_idx) : path_idx(path_idx), time_idx(time_idx) {}
    size_t path_idx;
    size_t time_idx;
};

size_t lcm(size_t A, size_t B) {
    std::array<size_t, 2> iter = { A, B};
    while (iter[0] != iter[1]) {
        if (iter[0] < iter[1]) {
            iter[0] += A;
        } else {
            iter[1] += B;
        }
    }
    return iter[0];
}

int main() {
    std::string fileContents = utils::ReadFile("part1.input");
    auto lines = utils::split(fileContents, ENDLINE);

    std::string path = lines[0];
    lines.erase(lines.begin(), lines.begin()+2);

    // Save the map
    std::unordered_map<std::string, route> map;
    std::vector<std::string> pos;
    for (std::string &line : lines) {
        auto parts = utils::split(line, " = ");
        std::string name = parts[0];
        parts[1] = parts[1].substr(1, parts[1].size()-2);
        auto route_str = utils::split(parts[1], ", ");
        route x(route_str[0], route_str[1]);
        map[name] = x;

        // Pull out starting locations
        if (name[name.size() - 1] == 'A') {
            pos.emplace_back(name);
        }
    }

    size_t cycle_len = 1;

    // For each starting point, determine the cycle length and XXZ pos within each one
    for (std::string &x : pos) {
        std::cout << x << std::endl;
        std::unordered_map<std::string, std::vector<state>> pos_list;
        std::vector<size_t> z_idx;
        size_t idx = 0;
        size_t time = 0;
        pos_list[x].emplace_back(idx, time);

        bool done = false;
        while (!done) {
            // std::cout << x << "(" << idx << ")" << std::endl;

            char dir = path[idx];
            if (dir == 'L') {
                x = map[x].left;
            } else if (dir == 'R') {
                x = map[x].right;
            }

            // Detect if it's a cycle:
            // - we've visited this position before
            // - at that time, we had the same idx as we do now
            if (pos_list.find(x) != pos_list.end()) {
                for (state old_state  : pos_list[x]) {
                    if (old_state.path_idx == idx) {
                        std::cout << "Looping at " << x << " (idx = " << idx << ", length = " << time - old_state.time_idx << ")" << std::endl;
                        cycle_len = lcm(cycle_len, time - old_state.time_idx);
                        std::cout << "Cycle length: " << cycle_len << std::endl;
                        done = true;
                        break;
                    }
                }
            }
            pos_list[x].emplace_back(idx, time);

            if (x[x.size() - 1] == 'Z') {
                z_idx.emplace_back(pos_list.size());
            }

            time++;
            idx = (idx+1) % path.size();
        }
        std::cout << " - done (" << pos_list.size() - 1 << " length, " << z_idx.size() << "Z-pos's)" << std::endl;
    }

    return EXIT_SUCCESS;
}