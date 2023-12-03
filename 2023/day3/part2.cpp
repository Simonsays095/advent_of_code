#include "../utils.h"
#include <unordered_map>

// I'm using windows...
#define ENDLINE "\r\n"
#define PERIOD '.'
#define GEAR '*'

bool is_symbol(char x) {
    return !isdigit(x) && x != PERIOD;
}

struct Point {
    Point(int x, int y) : x(x), y(y) {}

    int x;
    int y;

    bool operator==(const Point other) const {
        return x == other.x && y == other.y;
    }
};

// Inject a hash function
template<>
struct std::hash<Point> {
    size_t operator()(const Point &p) const {
        return p.x * (1 >> 16) + p.y; // assume it cannot hold a position > 1>>16
    }
};

int main() {
    std::string fileContents = utils::ReadFile("part1.input");
    auto lines = utils::split(fileContents, ENDLINE);

    std::vector<Point> check_pos = {
        {-1, -1},
        {-1, 0},
        {-1, 1},
        {0, -1},
        {0, 1},
        {1, -1},
        {1, 0},
        {1, 1},
    };

    std::unordered_map<Point, std::vector<std::string>> master_gears;

    for(size_t row_num = 0; row_num < lines.size(); row_num++) {
        std::string row = lines[row_num];
        std::string num = "";
        bool is_part_num = false;
        std::vector<Point> neighboring_gears;
        for (size_t col_num = 0; col_num < row.size(); col_num++) {
            printf("%zu/%zu: num neighboring gears: %zu\n", col_num, row_num, neighboring_gears.size());
            char val = row[col_num];
            if (isdigit(val)) {
                num += val;

                for (Point &off : check_pos) {
                    Point pos{static_cast<int>(col_num) + off.x, static_cast<int>(row_num) + off.y};

                    if (pos.x < 0 || pos.x >= row.size() || pos.y < 0 || pos.y >= lines.size()) {
                        continue;
                    }

                    char x = lines[pos.y][pos.x];

                    // Cache neighboring gears (only once)
                    if (x == GEAR) {
                        bool gear_found = false;
                        for (Point &gear_pos : neighboring_gears) {
                            if (gear_pos == pos) {
                                gear_found = true;
                                break;
                            }
                        }
                        if (!gear_found) {
                            neighboring_gears.emplace_back(pos);
                        }
                    }

                    if (is_symbol(x)) {
                        is_part_num = true;
                    }
                }
            } else if (!num.empty()) {
                // Just left a digit - maybe sum it
                if (is_part_num) {
                    is_part_num = false;
                    printf("Found part num: %s\n", num.c_str());
                    // Cache in any neighboring gears
                    for (Point &pos : neighboring_gears) {
                        if (master_gears.find(pos) == master_gears.end()) {
                            master_gears[pos] = {num};
                        } else {
                            master_gears[pos].emplace_back(num);
                        }
                    }
                } else {
                    printf("Number is not a part num: %s\n", num.c_str());
                }
                num = "";
                neighboring_gears.clear();
            }
        }
        if (!num.empty()) {
            // Just left a digit - maybe sum it
            if (is_part_num) {
                is_part_num = false;
                printf("End line: Found part num: %s\n", num.c_str());
            } else {
                printf("End line: Number is not a part num: %s\n", num.c_str());
            }
            // Cache in any neighboring gears
            for (Point &pos : neighboring_gears) {
                if (master_gears.find(pos) == master_gears.end()) {
                    master_gears[pos] = {num};
                } else {
                    master_gears[pos].emplace_back(num);
                }
            }
            num = "";
            neighboring_gears.clear();
        }

    }

    // Now parse gears:
    size_t sum = 0;
    for (auto it : master_gears) {
        if (it.second.size() != 2) continue;

        printf("Gear @ %d/%d:", it.first.x, it.first.y);
        for (std::string &num : it.second) {
            printf("%s ", num.c_str());
        }
        printf("\n");
        sum += stoi(it.second[0]) * stoi(it.second[1]);
    }

    printf("Ending sum: %zu\n", sum);

    return EXIT_SUCCESS;
}