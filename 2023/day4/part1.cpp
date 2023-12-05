#include "../utils.h"

// I'm using windows...
#define ENDLINE "\r\n"
#define PERIOD '.'

int main() {
    std::string fileContents = utils::ReadFile("part1.input");
    auto lines = utils::split(fileContents, ENDLINE);

    size_t sum = 0;

    for (std::string &card : lines) {
        auto parts = utils::split(card, "|");
        auto start = utils::split(parts[0], ":");
        std::string nums = std::string(parts[0].data() + start[0].size()+1);
        
        auto winning_nums = utils::split(nums, " ");
        auto my_nums = utils::split(parts[1], " ");

        size_t card_val = 0;
        bool has_match = false;
        for (std::string num : winning_nums) {
            if (num.empty()) continue;
            int num_val = stoi(num);
            for (std::string my_num : my_nums) {
                if (my_num.empty()) continue;
                int my_num_val = stoi(my_num);

                if (my_num_val == num_val) {
                    if (!has_match) {
                        // First match
                        card_val = 1;
                        has_match = true;
                    } else {
                        card_val<<=1;
                    }
                    printf("Found match: %d (current score %zu)\n", num_val, card_val);
                    break;
                }
            }
        }
        if (has_match) {
            printf("Scoring card: %s (%zu points)\n", card.c_str(), card_val);
            sum += card_val;
        }
    }

    printf("Final score: %zu\n", sum);

    return EXIT_SUCCESS;
}