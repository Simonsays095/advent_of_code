#include "../utils.h"

// I'm using windows...
#define ENDLINE "\r\n"
#define DOUBLE_ENDLINE "\r\n\r\n"

class Map_portion {
public:
    Map_portion(size_t dst_base, size_t src_base, size_t size)
        : dst_base(dst_base), src_base(src_base), size(size) {}

    bool contains(size_t entry) const {
        return src_base <= entry && src_base + size > entry;
    }

    size_t operator[](size_t entry) const {
        size_t off = entry - src_base;
        return dst_base + off;
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

    size_t operator[](size_t entry) const {
        for (const Map_portion &part : parts) {
            if (part.contains(entry)) {
                return part[entry];
            }
        }
        // Not mapped, default to same number
        return entry;
    }

public:
    const std::string src_name, dst_name;
private:
    std::vector<Map_portion> parts;
};

int main() {
    std::string fileContents = utils::ReadFile("part1.input");
    auto lines = utils::split(fileContents, DOUBLE_ENDLINE);

    std::vector<size_t> seeds;
    std::vector<Map> maps;

    for(size_t i = 0; i < lines.size(); i++) {
        std::string entry = lines[i];
        if (i == 0) {
            // Save the "seeds"
            auto parts = utils::split(entry, ": ");
            auto seeds_str = utils::split(parts[1], " ");
            for (std::string &seed_str : seeds_str) {
                seeds.emplace_back(stol(seed_str));
                printf("Seed: %zu\n", seeds.back());
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
    for (size_t entry : seeds) {
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
            entry = (*cur_map)[entry];
            name = cur_map->dst_name;
            printf(" - %s = %zu\n", name.c_str(), entry);
        }
        printf("Final value: %zu\n", entry);
        min_location = std::min(min_location, entry);
    }

    printf("Lowest location: %zu\n", min_location);

}