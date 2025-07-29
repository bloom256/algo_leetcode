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
