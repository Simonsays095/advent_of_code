#include "../utils.h"
#include <deque>

// I'm using windows...
#define ENDLINE "\r\n"
#define DOUBLE_ENDLINE "\r\n\r\n"

struct interval {
    interval() = default;
    interval(size_t base, size_t size) : base(base), size(size) {}
    size_t base;
    size_t size;

    std::string str() const {
        std::ostringstream ss;
        ss << "base: " << base;
        ss << ", size: " << size;
        return ss.str();
    }

    std::vector<interval> operator-(const interval &diff) {
        std::vector<interval> result;
        // Check for a left interval
        if (base < diff.base && diff.base < base + size) {
            result.emplace_back(base, diff.base - base);
        }

        // And a right interval
        if (base < diff.base + diff.size && diff.base + diff.size < base + size) {
            result.emplace_back(diff.base + diff.size, base + size - (diff.base + diff.size));
        }
        return result;
    }
};

class Map_portion {
public:
    Map_portion(size_t dst_base, size_t src_base, size_t size)
        : dst_base(dst_base), src_base(src_base), size(size) {}

    interval get_overlap(const interval &src) const {
        // Check for non-overlap
        if (src.base > src_base + size || src.base + src.size < src_base) {
            return interval(0, 0);
        }

        size_t base = std::max(src.base, src_base);
        size_t end = std::min(src.base + src.size, src_base + size);
        return interval(base, end-base);
    }

    interval operator[](interval entry) const {
        size_t off = entry.base - src_base;
        interval result(dst_base + off, entry.size);
        printf("map part[]: %s -> %s\n", entry.str().c_str(), result.str().c_str());
        return result;
    }

private:
    size_t dst_base;
    size_t src_base;
    size_t size;
};

class Map {
public:
    Map(const std::string &src_name, const std::string &dst_name)
        : src_name(src_name), dst_name(dst_name) {}

    void set_part(size_t dst_base, size_t src_base, size_t size) {
        parts.emplace_back(dst_base, src_base, size);
    }

    std::vector<interval> operator[](std::vector<interval> entry) const {
        std::vector<interval> results;
        // copy the vector into a deque
        std::deque<interval> intervals(entry.size());
        for(size_t i = 0; i < entry.size(); i++) {
            intervals[i] = entry[i];
        }

        // For each interval, pull out mapped subintervals from each map portion
        while (!intervals.empty()) {
            interval x = intervals[0];
            intervals.pop_front();
            
            bool is_mapped = false;
            for (const Map_portion &part : parts) {
                interval overlap = part.get_overlap(x);
                if (overlap.size == 0) continue;
                is_mapped = true;

                // Get the mapped overlap results
                results.emplace_back(part[overlap]);

                std::vector<interval> remaining = x - overlap;
                for (const interval &left : remaining) {
                    intervals.emplace_back(left);
                }

                // If we have any remaining pieces, stop looking through
                // parts and come back to them through the deque
                if (!remaining.empty()) break;
            }
            // Not mapped, default to same interval
            if (!is_mapped) results.emplace_back(x);
        }
        printf("map[]:");
        for(const interval &x : entry) printf("%s ", x.str().c_str());
        printf(" -> ");
        for(const interval &res : results) printf("%s ", res.str().c_str());
        printf("\n");
        return results;
    }

public:
    const std::string src_name, dst_name;
private:
    std::vector<Map_portion> parts;
};

int main() {
    std::string fileContents = utils::ReadFile("part1.input");
    auto lines = utils::split(fileContents, DOUBLE_ENDLINE);

    std::vector<interval> seeds;
    std::vector<Map> maps;

    for(size_t i = 0; i < lines.size(); i++) {
        std::string entry = lines[i];
        if (i == 0) {
            // Save the "seeds"
            auto parts = utils::split(entry, ": ");
            auto seeds_str = utils::split(parts[1], " ");
            for(size_t seed_idx = 0; seed_idx < seeds_str.size(); seed_idx += 2) {
                seeds.emplace_back(stol(seeds_str[seed_idx]), stol(seeds_str[seed_idx+1]));
                printf("Seed: %s\n", seeds.back().str().c_str());
            }
            continue;
        }

        auto parts = utils::split(entry, ENDLINE);
        // Get the names
        constexpr char suffix[] = "map:";
        std::string map_name = parts[0].substr(0, parts[0].size() - std::size(suffix));
        auto name_parts = utils::split(map_name, "-");
        std::string src_name = name_parts[0];
        std::string dst_name = name_parts[2];
        Map map(src_name, dst_name);

        // Register each portion
        for (size_t idx = 1; idx < parts.size(); idx++) {
            auto portion_str = utils::split(parts[idx], " ");
            size_t dst_base = stol(portion_str[0]);
            size_t src_base = stol(portion_str[1]);
            size_t size = stol(portion_str[2]);
            map.set_part(dst_base, src_base, size);
            printf("%zu <-- (%zu) --> %zu\n", src_base, size, dst_base);
        }
        maps.emplace_back(map);
    }

    size_t min_location = 9999999999;

    // Follow the chain of maps
    for ( size_t i = 0; i < seeds.size(); i++) {
        std::vector<interval> intervals = { seeds[i] };
        std::string name = "seed";
        while(name != "location") {
            // find this map
            const Map *cur_map = nullptr;
            for(const auto &map : maps) {
                if (map.src_name == name) {
                    cur_map = &map;
                    break;
                }
            }
            if (cur_map == nullptr) {
                printf("Could not find a map for %s\n", name.c_str());
                break;
            }

            // Update the entry / name
            intervals = (*cur_map)[intervals];
            name = cur_map->dst_name;
            printf(" - %s = ", name.c_str());
            for(const interval &x : intervals) printf("%s ", x.str().c_str());
            printf("\n");
        }
        printf("Final value: ");
        for(const interval &x : intervals) {
            printf("%s ", x.str().c_str());
            min_location = std::min(min_location, x.base);
        }
        printf("\n");
    }

    printf("Lowest location: %zu\n", min_location);

}