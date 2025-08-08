## Heap

#### Kth Largest Element in an Array

*   **Task:** *Given an integer array nums and an integer k, return the kth largest element in the array. Note that it is the kth largest element in the sorted order, not the kth distinct element.*
*   **Task summary:** Find the k-th largest element in an unsorted array.
*   **Solution 1:** `std::nth_element(nums.begin(), nums.begin() + nums.size() - k, nums.end())` - best solution.
*   **Time complexity:** O(N) average, O(N^2) worst case.
*   **Space complexity:** O(1).
*   **Solution 2:** Run `std::make_heap` on input array - to make it max heap. Then K-1 times do `std::pop_heap(nums.begin(), nums.end() - i)` (notice -i). After this the first element will be K largest.
*   **Time complexity:** O(N) for `make_heap`, O(K log N) for K-1 `pop_heap` operations. Total: O(N + K log N).
*   **Space complexity:** O(1).
*   **Solution 3:** Create `std::priority_queue<int, std::vector<int>, std::greater<int>> minPriorityQueue` - empty minHeap. Then iterate over all elements in input array, push them to heap. If heap grows larger than k elements, pop min element from it. In the end the first element in heap will be K largest. This solution is good if we don't want to change input array.
*   **Time complexity:** O(N log K).
*   **Space complexity:** O(K).
