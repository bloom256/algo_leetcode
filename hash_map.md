## Hash Map

#### Implement LRU Cache

*   Use `std::list<int>` to maintain the key access order (most recently used at the front). Use `std::unordered_map<int, std::tuple<int, std::list<int>::iterator>>` to store keys, their corresponding values, and an iterator to their position in the `std::list`. On access, move the key to the front of the list. On insertion when capacity is full, remove the least recently used item (back of the list) and its entry from the map.
*   Time complexity: `get` and `put` are O(1).
*   Space complexity: O(capacity)