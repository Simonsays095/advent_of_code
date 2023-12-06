#include "../utils.h"
#include <cmath>

// I'm using windows...
#define ENDLINE "\r\n"

int main() {
    std::string fileContents = utils::ReadFile("part1.input");
    auto lines = utils::split(fileContents, ENDLINE);

    size_t prod = 1;
    
    auto times_str = utils::split(lines[0], " ", true);
    auto distances_str = utils::split(lines[1], " ", true);
    for(size_t i = 1; i < times_str.size(); i++) {
        size_t time = stol(times_str[i]);
        size_t distance = stol(distances_str[i]);
        printf("%zu ms -> %zu mm\n", time, distance);

        // v = t_hold
        // x = t_hold * (t_max - t_hold) = - t_hold ^2 + t_hold * t_max
        // max: 0 = -2*t_hold + t_max -> t_hold = t_max/2
        // 0 = t_hold^2 - t_max*t_hold + distance
        // quadratic formula: -t_max +/- sqrt(t_max^2 - 4*distance) / 2;
        float det = std::sqrt(time*time - 4 * distance);
        printf(" - det %f\n", det);
        long early = std::ceil((time - det) / 2);
        long late = std::floor((time + det) / 2);

        // Check distances in case we tie
        float early_dist = early * (time - early);
        float late_dist = late * (time - late);
        if (early_dist == distance) early++;
        if (late_dist == distance) late--;
        printf("%ld - %ld (prod %ld)\n", early, late, (late - early + 1));
        prod *= (late - early + 1);
    }
    printf("Product: %zu\n", prod);

    return EXIT_SUCCESS;
}