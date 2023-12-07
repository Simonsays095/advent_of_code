#ifndef UTILS
#define UTILS

#include <string>
#include <sstream>
#include <fstream>
#include <vector>

namespace utils {

// source: https://stackoverflow.com/questions/2602013/read-whole-ascii-file-into-c-stdstring
std::string ReadFile(const char *filename) {
    std::ifstream f(filename);
    std::stringstream buffer;
    buffer << f.rdbuf();
    return buffer.str();
}

// source: https://www.geeksforgeeks.org/cpp-string-to-vector-using-delimiter/#
std::vector<std::string> split(const std::string &str, const std::string &delim, bool skip_multi_delim = false) {
    std::vector<std::string> v;
    if (!str.empty()) {
        int start = 0;
        do {
            // Find the index of occurrence
            int idx = str.find(delim, start);
            if (idx == std::string::npos) {
                break;
            }
 
            // If found add the substring till that
            // occurrence in the vector
            int length = idx - start;
            if (length > 0 || !skip_multi_delim)
                v.push_back(str.substr(start, length));

            start += (length + delim.size());
        } while (true);
        v.push_back(str.substr(start));
    }
 
    return v;
}

} // namespace utils

#endif