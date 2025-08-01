## Sliding Window

### Fixed-size sliding window

#### Maximum Average Subarray I

* Set `begin` to 0, iterate `end` over all elements. On each iteration increase `win_sum`. If `win_len` is `k`, update `max_avg`, decrease `win_sum` by the `begin` element, and move `begin` forward.
* Time complexity: O(n)
* Space complexity: O(1)

### Variable-size sliding window

#### Minimum Size Subarray Sum

* Use a classical sliding window. When the window sum is greater than or equal to the target, update the minimum length and shrink the window from the beginning in a loop.
* Time complexity: O(n)
* Space complexity: O(1)

#### Max Consecutive Ones III

* Sliding window where the window state is the number of flipped zeros. Iterate `end` over all elements, and if needed, move `begin` in a loop to maintain the window state. Update `max_len` at the end of each `end` iteration.
* Time complexity: O(n)
* Space complexity: O(1)

#### Fruit into Baskets

* Use an unordered map to count fruit types in the window. On each iteration, add the new fruit to the map. If the map size exceeds the allowed number of baskets, shrink the window from the beginning in a loop, decrementing fruit counts until a fruit type is removed from the map. Update the maximum number of fruits with the current window length on each iteration.
* Time complexity: O(n)
* Space complexity: O(k) where k is the number of baskets

#### Longest Subarray of 1s After Deleting One Element

* The window state is the number of zeros. On each iteration, update the state. If needed, shrink the window in a cycle. Update `maxOnes` using `winLen` - 1.
* Time complexity: O(n)
* Space complexity: O(1)
