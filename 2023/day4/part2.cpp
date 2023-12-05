#include "../utils.h"
#include <unordered_map>

// I'm using windows...
#define ENDLINE "\r\n"
#define PERIOD '.'

int main() {
    std::string fileContents = utils::ReadFile("part1.input");
    auto lines = utils::split(fileContents, ENDLINE);

    size_t num_cards = 0;

    std::unordered_map<size_t, size_t> copies;
    copies[0] = 0;

    for (size_t i = 0; i < lines.size(); i++) {
        std::string &card = lines[i];
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
                        card_val+=1;
                    }
                    printf("Found match: %d (current score %zu)\n", num_val, card_val);
                    break;
                }
            }
        }
        printf("Scoring card: %s (%zu points)\n", card.c_str(), card_val);
        size_t multiplier = copies[i] + 1;

        // Add copies of later cards
        for(size_t off = 1; off <= card_val; off++) {
            size_t next_card = i+off;
            if (copies.find(next_card) == copies.end()) {
                copies[next_card] = 0;
            }
            copies[next_card] += multiplier;
            printf("Incrementing card #%zu by %zu\n", next_card, multiplier);
        }

        // Count the number of cards
        printf("Score from card %zu: %zu\n", i, multiplier);
        num_cards += multiplier;
    }

    printf("Num cards: %zu\n", num_cards);

    return EXIT_SUCCESS;
}