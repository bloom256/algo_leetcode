## Heap

#### Kth Largest Element in an Array

*   **Task:** *Given an integer array nums and an integer k, return the kth largest element in the array. Note that it is the kth largest element in the sorted order, not the kth distinct element.*
*   **Task summary:** Find the k-th largest element in an unsorted array.
*   **Solution 1:** `std::nth_element(nums.begin(), nums.begin() + nums.size() - k, nums.end())` - best solution.
*   **Time complexity:** O(N) average, O(N^2) worst case.
*   **Space complexity:** O(1).
*   **Solution 2:** Run `std::make_heap` on input array - to make it max heap. Then K-1 times do `std::pop_heap(nums.begin(), nums.end() - i)` (notice -i). After this the first element will be K largest.
*   **Time complexity:** O(N + K log N).
*   **Space complexity:** O(1).
*   **Solution 3:** Create `std::priority_queue<int, std::vector<int>, std::greater<int>> minPriorityQueue` - empty minHeap. Then iterate over all elements in input array, push them to heap. If heap grows larger than k elements, pop min element from it. In the end the first element in heap will be K largest. This solution is good if we don't want to change input array.
*   **Time complexity:** O(N log K).
*   **Space complexity:** O(K).

#### Kth Largest Element in a Stream

*   **Task:** *Design a class to find the kth largest element in a stream. Note that it is the kth largest element in the sorted order, not the kth distinct element. Implement KthLargest class: `KthLargest(int k, int[] nums)` Initializes the object with the integer k and the stream of integers nums. `int add(int val)` Appends the integer val to the stream and returns the element representing the kth largest element in the stream.*
*   **Task summary:** Find the k-th largest element in a data stream.
*   **Solution:** Use `std::priority_queue<int, std::vector<int>, std::greater<int>> minHeap;` as a min-heap. In the constructor, iterate through the initial numbers and push them to the heap, while maintaining a heap size of at most `k`. In the `add` method, push the new value. If the heap size exceeds `k`, pop the smallest element. The top element of the heap is always the k-th largest.
*   **Time complexity:** O(N log K) for constructor, O(log K) for `add`, where N is the initial number of elements and K is the given parameter.
*   **Space complexity:** O(K) to store the heap.

#### Top K Frequent Elements

*   **Task:** *Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.*
*   **Task summary:** Find the k most frequent elements in an array.
*   **Solution:** Use `std::unordered_map<int, int> counts` to count the frequency of each element. Then, create a min-heap of pairs (`std::vector<std::pair<int, int>> minHeap`). Iterate through the map and push pairs of `{frequency, number}` into the heap using `std::push_heap`. If the heap size exceeds `k`, remove the smallest element using `std::pop_heap`. A custom comparator `cmpGreater` for pairs is needed to make the min-heap work correctly. Finally, the heap will contain the k most frequent elements.
*   **Time complexity:** O(N log K), where N is the number of elements in the input array.
*   **Space complexity:** O(N) in the worst case for the hash map, and O(K) for the heap.
