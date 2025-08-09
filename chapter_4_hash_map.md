## Hash Map

#### Implement LRU Cache

* **Task:** Design a data structure that follows the constraints of a Least Recently Used (LRU) cache. Implement the LRUCache class: LRUCache(int capacity) initializes the LRU cache with the given positive capacity. int get(int key) Returns the value of the key if the key exists, otherwise return -1. void put(int key, int value) Update the value of the key if the key exists. Otherwise, add the key-value pair to the cache. If the number of keys exceeds the capacity from this operation, evict the least recently used key. The functions get and put must each run in O(1) average time complexity.
* **Task summary:** Implement a Least Recently Used (LRU) cache.
* **Solution:** Use `std::list<int>` to maintain the key access order (most recently used at the front). Use `std::unordered_map<int, std::tuple<int, std::list<int>::iterator>>` to store keys, their corresponding values, and an iterator to their position in the `std::list`. On access, move the key to the front of the list. On insertion when capacity is full, remove the least recently used item (back of the list) and its entry from the map.
* **Time complexity:** `get` and `put` are O(1).
* **Space complexity:** O(capacity)

#### Strings: Making Anagrams (HackerRank)

* **Task:** Given two strings, a and b, that may or may not be of the same length, determine the minimum number of character deletions required to make a and b anagrams. Any characters can be deleted from either of the strings. Anagrams are strings that contain the same exact letters with the same exact frequencies.
* **Task summary:** Find the minimum deletions to make two strings anagrams.
* **Solution:** Use two hash maps, `dict1` and `dict2`. Iterate through `s1`: for each character `c`, `dict1[c]++` and `dict2[c] += 0`. Then, iterate through `s2`: for each character `c`, `dict2[c]++` and `dict1[c] += 0`. After these operations, both `dict1` and `dict2` will contain all unique characters present in either string, but counter for only one correspndent string. Then iterate dict1. In each iteration get count1 and count2 for character. To equalize occurrences in both strings, we need to delete `abs(dict1[c] - dict2[c])` for each character `c`. Sum these absolute differences to get the total deletions required.
* **Time complexity:** O(n + m)
* **Space complexity:** O(1)

#### Two Sum

* **Task:** Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target. You may assume that each input would have exactly one solution, and you may not use the same element twice. You can return the answer in any order.
* **Task summary:** Find two numbers in an array that sum to a target.
* **Solution:** Use 'visited' hash map
* **Time complexity:** O(n)
* **Space complexity:** O(n)

#### Sort Characters By Frequency

*   **Task:** *Given a string s, sort it in decreasing order based on the frequency of the characters. The frequency of a character is the number of times it appears in the string. Return the sorted string.*
*   **Task summary:** Sort a string by the frequency of its characters in descending order.
*   **Solution:** Use a hash map (`std::unordered_map<char, int> counts`) to count the frequency of each character in the string. Then, sort the characters based on their frequencies. For a small alphabet, bucket sort is a good option. Otherwise, `std::sort` can be used on a vector of pairs (frequency, character). After sorting, build the result string by iterating through the sorted characters and appending each character `c` to the result string `counts[c]` times. A convenient way to do this is `result.append(counts[c], c)`.
*   **Time complexity:** O(N), where N is the length of the string.
*   **Space complexity:** O(N), where N is the length of the string.