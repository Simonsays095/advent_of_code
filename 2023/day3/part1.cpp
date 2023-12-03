#include "../utils.h"

// I'm using windows...
#define ENDLINE "\r\n"
#define PERIOD '.'

bool is_symbol(char x) {
    return !isdigit(x) && x != PERIOD;
}

struct Point {
    Point(int x, int y) : x(x), y(y) {}

    int x;
    int y;
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

    size_t sum = 0;

    for(size_t row_num = 0; row_num < lines.size(); row_num++) {
        std::string row = lines[row_num];
        std::string num = "";
        bool is_part_num = false;
        for (size_t col_num = 0; col_num < row.size(); col_num++) {
            char val = row[col_num];
            if (isdigit(val)) {
                num += val;

                for (Point &off : check_pos) {
                    Point pos{static_cast<int>(col_num) + off.x, static_cast<int>(row_num) + off.y};

                    if (pos.x < 0 || pos.x >= row.size() || pos.y < 0 || pos.y >= lines.size()) {
                        continue;
                    }

                    if (is_symbol(lines[pos.y][pos.x])) {
                        is_part_num = true;
                    }
                }
            } else if (!num.empty()) {
                // Just left a digit - maybe sum it
                if (is_part_num) {
                    is_part_num = false;
                    sum += stoi(num);
                    printf("Found part num: %s (sum -> %zu)\n", num.c_str(), sum);
                } else {
                    printf("Number is not a part num: %s\n", num.c_str());
                }
                num = "";
            }
        }
        if (!num.empty()) {
            // Just left a digit - maybe sum it
            if (is_part_num) {
                is_part_num = false;
                sum += stoi(num);
                printf("End line: Found part num: %s (sum -> %zu)\n", num.c_str(), sum);
            } else {
                printf("End line: Number is not a part num: %s\n", num.c_str());
            }
            num = "";
        }

    }

    printf("Ending sum: %zu\n", sum);

    return EXIT_SUCCESS;
}