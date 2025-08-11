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

#### Last Stone Weight

*   **Task:** *You are given an array of integers stones where stones[i] is the weight of the ith stone. We are playing a game with the stones. On each turn, we choose the two heaviest stones and smash them together. Suppose the heaviest stones have weights x and y with x <= y. The result of this smash is: If x == y, both stones are destroyed. If x != y, the stone of weight x is destroyed, and the stone of weight y has new weight y - x. At the end of the game, there is at most one stone left. Return the weight of the last remaining stone, or 0 if no stones are left.*
*   **Task summary:** In each step, we take two heaviest stones, smash them, and put the resulting stone back. We need to find the weight of the last stone.
*   **Solution:** Use a max-heap (`std::priority_queue<int> maxHeap`) to efficiently find the two heaviest stones. Push all stone weights into the max-heap. While the heap has more than one stone, pop the two largest stones, calculate the difference, and if the difference is not zero, push it back to the heap. The final result is the last remaining stone's weight or 0 if the heap is empty. If we can change input array, use `std::make_heap` (O(N)) and `std::pop_heap` (O(logN)) and `std::push_heap` (O(logN)) to work with it directly.
*   **Time complexity:** O(N log N) due to pushing N elements to the heap.
*   **Space complexity:** O(N) for the heap, or O(1) if we modify the input array.

#### IPO

*   **Task:** *Given n projects, where the i-th project has a pure profit profits[i] and a minimum capital capital[i] required to start it. Initially, you have w capital. When you finish a project, you will obtain its pure profit. You can only start a project if you have at least the capital required for it. At most, you can choose k projects to finish. Your goal is to find the maximum final capital you can achieve.*
*   **Task summary:** Maximize capital by selecting at most k projects, given initial capital, project profits, and required capital.
*   **Solution:** Create `std::vector<std::pair<int, int>> projects` storing `{capital, profit}` pairs. Sort this vector by capital. Initialize `maxHeap` (a `std::priority_queue<int>`) for profits of affordable projects and `projectIdx = 0`. Iterate `k` times: in each iteration, add all projects whose capital requirement is met by `currCapital` to `maxHeap`. If `maxHeap` is empty, break (no more affordable projects). Otherwise, add the top profit from `maxHeap` to `currCapital` and remove it from `maxHeap`. Return `currCapital`.
*   **Time complexity:** O(N log N + K log N), where N is the number of projects and K is the number of projects to choose. Sorting takes O(N log N). In the loop, each project is added to the heap once (O(N log N) total), and K times we extract max (O(K log N)).
*   **Space complexity:** O(N) for storing projects and the heap.

#### Find Median from Data Stream

*   **Task:** *The median is the middle value in an ordered integer list. If the size of the list is even, there is no middle value, and the median is the mean of the two middle values. For example, for arr = [2,3,4], the median is 3. For arr = [2,3], the median is (2 + 3) / 2 = 2.5. Implement the MedianFinder class: `MedianFinder()` initializes the MedianFinder object. `void addNum(int num)` adds the integer num from the data stream to the data structure. `double findMedian()` returns the median of all elements so far.*
*   **Task summary:** Design a data structure that supports adding numbers from a stream and finding the median of all numbers added so far.
*   **Solution:** Use two heaps: a max-heap (`firstHalf`) to store the smaller half of the numbers and a min-heap (`secondHalf`) to store the larger half.
    To add a new number (`addNum`):
    1.  If `firstHalf` is empty (this is the first number added), add the number to `firstHalf`.
    2.  Otherwise, compare the number to the top of `firstHalf`. If it's less than or equal, add it to `firstHalf`; otherwise, add it to `secondHalf`.
    3.  After adding the- number, rebalance the heaps. If one heap has two more elements than the other, move the top element from the larger heap to the smaller one.
    To find the median (`findMedian`):
    1.  If `firstHalf` has more elements, its top is the median.
    2.  If `secondHalf` has more elements, its top is the median.
    3.  If they have the same number of elements, the median is the average of their tops.
*   **Time complexity:** `addNum` is O(log N), `findMedian` is O(1).
*   **Space complexity:** O(N) to store all numbers.

#### Remove Stones to Minimize the Total

*   **Task:** *You are given a 0-indexed integer array `piles`, where `piles[i]` represents the number of stones in the `i`-th pile, and an integer `k`. You are allowed to apply the following operation exactly `k` times: Choose any `piles[i]` and subtract `floor(piles[i] / 2)` stones from it. Your goal is to minimize the total number of stones remaining in all piles. Return the minimum possible total number of stones remaining after applying the operation exactly `k` times.*
*   **Task summary:** Minimize the total number of stones by repeatedly removing half the stones from the largest pile.
*   **Solution:** Create a max-heap from the `piles` array using `std::make_heap`. Then, loop `k` times. In each iteration, pop the largest pile from the heap using `std::pop_heap`, calculate the new pile size (`pile - floor(pile / 2)`), and push it back to the heap using `std::push_heap`. After the loop, the sum of all elements in the heap is the minimum total number of stones. This can be calculated using `std::accumulate`.
*   **Time complexity:** O(N + k log N), where N is the number of piles. `make_heap` is O(N), and each of the `k` operations (pop and push) is O(log N).
*   **Space complexity:** O(1) if we modify the input array, or O(N) if we use a separate priority queue.
