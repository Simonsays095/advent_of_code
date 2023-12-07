#include "../utils.h"
#include <algorithm>

// I'm using windows...
#define ENDLINE "\r\n"

enum class card_t {
    undefined = 0,
    two,
    three,
    four,
    five,
    six,
    seven,
    eight,
    nine,
    ten,
    jack,
    queen,
    king,
    ace,
};

std::string card2str(card_t x) {
#define CASE(val) case card_t::val: return #val
    switch (x) {
        CASE(two);
        CASE(three);
        CASE(four);
        CASE(five);
        CASE(six);
        CASE(seven);
        CASE(eight);
        CASE(nine);
        CASE(ten);
        CASE(jack);
        CASE(queen);
        CASE(king);
        CASE(ace);
        default: return "unexpected";
    }
#undef CASE
}

card_t char2card(char x) {
#define CASE(val, card) if (x == val) return card_t::card
    CASE('2', two);
    CASE('3', three);
    CASE('4', four);
    CASE('5', five);
    CASE('6', six);
    CASE('7', seven);
    CASE('8', eight);
    CASE('9', nine);
    CASE('T', ten);
    CASE('J', jack);
    CASE('Q', queen);
    CASE('K', king);
    CASE('A', ace);
    return card_t::undefined;
#undef CASE
}

enum class hand_type_t {
    high_card,
    one_pair,
    two_pair,
    three_of_kind,
    full_house,
    four_of_kind,
    five_of_kind
};

class hand_t {
public:
    hand_t(const std::vector<card_t> cards, size_t bid) : cards(cards), bid_(bid) {}

    hand_type_t type() {
        std::unordered_map<card_t, size_t> counts;
        for (card_t card : cards) {
            if (counts.find(card) == counts.end()) counts[card] = 0;
            counts[card]++;
        }

        // Pull out the bin sizes
        std::vector<size_t> bin_sizes;
        for(auto &it : counts) {
            bin_sizes.emplace_back(it.second);
        }

        // Sort for consistency
        std::sort(bin_sizes.begin(), bin_sizes.end());

        // Parse from high value to low:
#define CASE(val, ...) \
    do { \
        std::vector<size_t> case_counts = {__VA_ARGS__}; \
        if (case_counts.size() != bin_sizes.size()) break; \
        bool match = true; \
        for(size_t i = 0; i < case_counts.size(); i++) { \
            if (case_counts[i] != bin_sizes[i]) { \
                match = false; \
                break; \
            } \
        } \
        if (match) return hand_type_t::val; \
    } while(0)
    
        CASE(five_of_kind, 5);
        CASE(four_of_kind, 1, 4);
        CASE(full_house, 2, 3);
        CASE(three_of_kind, 1, 1, 3);
        CASE(two_pair, 1, 2, 2);
        CASE(one_pair, 1, 1, 1, 2);
        CASE(high_card, 1, 1, 1, 1, 1);

#undef CASE
        return hand_type_t::full_house;
    }

    inline size_t size() const { return cards.size(); }
    card_t card(size_t idx) const {return cards[idx]; }
    inline size_t bid() const { return bid_; }
private:
    std::vector<card_t> cards;
    size_t bid_;
};

int main() {
    std::string fileContents = utils::ReadFile("part1.input");
    auto lines = utils::split(fileContents, ENDLINE);

    // Parse hands
    std::vector<hand_t> hands;
    for(const std::string &line : lines) {
        auto parts = utils::split(line, " ");
        std::string cards_str = parts[0];
        std::vector<card_t> cards(cards_str.size());
        for(size_t i = 0; i < cards_str.size(); i++) {
            cards[i] = char2card(cards_str[i]);
            printf("%c -> %s\n", cards_str[i], card2str(cards[i]).c_str());
        }
        size_t bid = stol(parts[1]);

        hands.emplace_back(cards, bid);
    }

    // sort hands
    std::sort(hands.begin(), hands.end(), [](hand_t A, hand_t B) {
        // First sort by type
        if (A.type() < B.type()) return true;
        if (B.type() < A.type()) return false;

        // Then by card order
        for (size_t i = 0; i < A.size(); i++) {
            if (A.card(i) < B.card(i)) return true;
            if (B.card(i) < A.card(i)) return false;
        }

        // They're equal, don't change order
        return true;
    });

    // score
    size_t score = 0;
    for(size_t i = 0; i < hands.size(); i++) {
        printf("bid #%zu: %zu\n", i, hands[i].bid());
        score += hands[i].bid() * (i+1);
    }
    printf("Final score: %zu\n", score);

    return EXIT_SUCCESS;
}