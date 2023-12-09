#include "../utils.h"
#include <iostream>
#include <unordered_map>

// I'm using windows...
#define ENDLINE "\r\n"

struct route {
    route() = default;
    route(std::string &left, std::string &right) : left(left), right(right) {}
    std::string left;
    std::string right;
};

int main() {
    std::string fileContents = utils::ReadFile("part1.input");
    auto lines = utils::split(fileContents, ENDLINE);

    std::string path = lines[0];
    lines.erase(lines.begin(), lines.begin()+2);
    for (std::string &line : lines) {
        std::cout << line << std::endl;
    }

    // Save the map
    std::unordered_map<std::string, route> map;
    for (std::string &line : lines) {
        auto parts = utils::split(line, " = ");
        std::string name = parts[0];
        parts[1] = parts[1].substr(1, parts[1].size()-2);
        std::cout << parts[1] << std::endl;
        auto route_str = utils::split(parts[1], ", ");
        route x(route_str[0], route_str[1]);
        map[name] = x;
    }
    
    // Follow the route!
    std::string pos = "AAA";
    size_t len = 0;
    size_t idx = 0;
    while(pos != "ZZZ") {
        std::cout << pos << std::endl;
        char dir = path[idx];
        if (dir == 'L') {
            pos = map[pos].left;
        } else if (dir == 'R') {
            pos = map[pos].right;
        }

        idx = (idx + 1) % path.size();
        len++;
    }

    std::cout << "Length: " << len << std::endl;

    return EXIT_SUCCESS;
}