## Sliding Window

### Fixed-size sliding window

#### Maximum Average Subarray I

* **Task:** You are given an integer array nums consisting of n elements, and an integer k. Find a contiguous subarray whose length is equal to k that has the maximum average value and you return this value. Any answer with a calculation error less than 10-5 will be accepted.
* **Task summary:** Find the maximum average of a contiguous subarray of a given length k.
* **Solution:** Set `begin` to 0, iterate `end` over all elements. On each iteration increase `win_sum`. If `win_len` is `k`, update `max_avg`, decrease `win_sum` by the `begin` element, and move `begin` forward.
* **Time complexity:** O(n)
* **Space complexity:** O(1)

#### Permutation in String

* **Task:** Given two strings s1 and s2, return true if s2 contains a permutation of s1, or false otherwise. In other words, given two strings s1 and s2, write a function to return true if s2 contains the permutation of s1 as a substring. This means that the characters in s1 must be present in s2 in the same quantity, but their order can be different.
* **Task summary:** Check if one string is a permutation of a substring of another string.
* **Solution:** Use a sliding window of size `s1.size()`. Initialize a character count structure (an array of size 26 for small alphabets like lowercase English, or a hash map for larger character sets) with character counts from `s1`. Iterate through `s2` with a sliding window. For each character entering the window, decrement its count in the structure. For each character leaving the window, increment its count. Maintain a `zeroCount` variable to track how many characters in the structure have a count of zero. If `zeroCount` equals the number of unique characters in `s1` (or 26 for the array approach), a permutation is found. The counts can be negative if a character appears more times in the window (from `s2`) than in `s1`.
* **Time Complexity:** O(L1 + L2), where L1 is the length of s1 and L2 is the length of s2.
* **Space Complexity:** O(1) (constant space for the array/hash map, as it stores at most 26 characters or unique characters from s1).

### Variable-size sliding window

#### Longest Substring Without Repeating Characters

* **Task:** Given a string s, find the length of the longest substring without repeating characters.
* **Task summary:** Find the length of the longest substring without repeating characters.
* **Solution:** Use a variable-size sliding window. Maintain a `std::array<char, 256> counts{}` to store character frequencies within the current window. Iterate with `right` pointer. For each character `s[right]`, increment its count. If `counts[s[right]]` becomes greater than 1, indicating a duplicate, shrink the window from the `left` by decrementing `counts[s[left]]` and incrementing `left` until the duplicate is removed. After each `right` iteration, update `maxLen = max(maxLen, right - left + 1)`.
* **Time Complexity:** O(N), where N is the length of the string, as each character is visited at most twice (once by `right` and once by `left`).
* **Space Complexity:** O(1), as the `counts` array size is fixed (256 for ASCII characters).

#### Minimum Size Subarray Sum

* **Task:** Given an array of positive integers nums and a positive integer target, return the minimal length of a subarray whose sum is greater than or equal to target. If there is no such subarray, return 0 instead.
* **Task summary:** Find the minimum length of a subarray whose sum is greater than or equal to a target.
* **Solution:** Use a classical sliding window. When the window sum is greater than or equal to the target, update the minimum length and shrink the window from the beginning in a loop.
* **Time complexity:** O(n)
* **Space complexity:** O(1)

#### Max Consecutive Ones III

* **Task:** Given a binary array nums and an integer k, return the maximum number of consecutive 1's in the array if you can flip at most k 0's.
* **Task summary:** Find the maximum number of consecutive 1's in a binary array by flipping at most k zeros.
* **Solution:** Sliding window where the window state is the number of flipped zeros. Iterate `end` over all elements, and if needed, move `begin` in a loop to maintain the window state. Update `max_len` at the end of each `end` iteration.
* **Time complexity:** O(n)
* **Space complexity:** O(1)

#### Fruit into Baskets

* **Task:** You are given an integer array fruits where fruits[i] is the type of the ith fruit you would pick. You have two baskets, and each basket can only hold a single type of fruit. There is no limit on the amount of fruit each basket can hold. You can start at any tree you want, but you must not skip a tree once you have started. You will continue picking fruits from trees when you move to the right. Return the maximum number of fruits you can pick.
* **Task summary:** Find the maximum number of fruits you can pick with at most two types of fruit.
* **Solution:** Use an unordered map to count fruit types in the window. On each iteration, add the new fruit to the map. If the map size exceeds the allowed number of baskets, shrink the window from the beginning in a loop, decrementing fruit counts until a fruit type is removed from the map. Update the maximum number of fruits with the current window length on each iteration.
* **Time complexity:** O(n)
* **Space complexity:** O(k) where k is the number of baskets

#### Longest Subarray of 1s After Deleting One Element

* **Task:** Given a binary array nums, you should delete one element from it. Return the size of the longest subarray containing only 1's in the resulting array.
* **Task summary:** Find the longest subarray of 1s after deleting at most one element.
* **Solution:** The window state is the number of zeros. On each iteration, update the state. If needed, shrink the window in a cycle. Update `maxOnes` using `winLen` - 1.
* **Time complexity:** O(n)
* **Space complexity:** O(1)


