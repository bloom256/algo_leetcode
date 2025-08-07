## Hash Map

#### Implement LRU Cache

*   Use `std::list<int>` to maintain the key access order (most recently used at the front). Use `std::unordered_map<int, std::tuple<int, std::list<int>::iterator>>` to store keys, their corresponding values, and an iterator to their position in the `std::list`. On access, move the key to the front of the list. On insertion when capacity is full, remove the least recently used item (back of the list) and its entry from the map.
*   Time complexity: `get` and `put` are O(1).
*   Space complexity: O(capacity)

#### Strings: Making Anagrams (HackerRank)

*   Use two hash maps, `dict1` and `dict2`. Iterate through `s1`: for each character `c`, `dict1[c]++` and `dict2[c] += 0`. Then, iterate through `s2`: for each character `c`, `dict2[c]++` and `dict1[c] += 0`. After these operations, both `dict1` and `dict2` will contain all unique characters present in either string, but counter for only one correspndent string. Then iterate dict1. In each iteration get count1 and count2 for character. To equalize occurrences in both strings, we need to delete `abs(dict1[c] - dict2[c])` for each character `c`. Sum these absolute differences to get the total deletions required.
*   Time complexity: O(n + m)
*   Space complexity: O(1)
