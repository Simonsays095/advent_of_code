#include "../utils.h"
#include <cctype>

// I'm using windows...
#define ENDLINE "\r\n"

class Game {
public:
    Game(std::string &line) {
        auto full_parts = utils::split(line, ":");
        auto id_parts = utils::split(full_parts[0], " ");
        id = stoi(id_parts[1]);
        auto subset_strs = utils::split(full_parts[1], ";");
        for (std::string &subset_str : subset_strs) {
            auto cubes = utils::split(subset_str, ",");
            subset ss;
            for (std::string &selection : cubes) {
                auto parts = utils::split(selection, " ");
                if (parts[2] == "red")
                    ss.red = stoi(parts[1]);
                if (parts[2] == "green")
                    ss.green = stoi(parts[1]);
                if (parts[2] == "blue")
                    ss.blue = stoi(parts[1]);
            }
            subsets.emplace_back(ss);
            printf("subset: %zu/%zu/%zu\n", ss.red, ss.green, ss.blue);
        }
    }

    struct subset {
        size_t red = 0;
        size_t green = 0;
        size_t blue = 0;
    };

    size_t id;
    std::vector<subset> subsets;
};

int main () {
    std::string fileContents = utils::ReadFile("part1.input");
    auto lines = utils::split(fileContents, ENDLINE);

    size_t power_sum = 0;

    for (std::string &line : lines) {
        Game game(line);
        Game::subset min;
        for(Game::subset ss : game.subsets) {
            if (ss.red > min.red)
                min.red = ss.red;
            if (ss.green > min.green)
                min.green = ss.green;
            if (ss.blue > min.blue)
                min.blue = ss.blue;
        }
        
        size_t power = min.red * min.green * min.blue;
        power_sum += power;

    }

    printf("Final power sum: %zu\n", power_sum);

    return EXIT_SUCCESS;
}