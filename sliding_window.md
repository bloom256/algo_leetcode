## Sliding Window

### Fixed-size sliding window

#### Maximum Average Subarray I

* Set `begin` to 0, iterate `end` over all elements. On each iteration increase `win_sum`. If `win_len` is `k`, update `max_avg`, decrease `win_sum` by the `begin` element, and move `begin` forward.
* Time complexity: O(n)
* Space complexity: O(1)
