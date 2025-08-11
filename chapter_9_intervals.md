## Intervals

#### Meeting Rooms

*   **Task:** *Given an array of meeting time intervals where intervals[i] = [start, end], determine if a person could attend all meetings.*
*   **Task summary:** Check if any meetings in a list of time intervals overlap.
*   **Solution:** Sort the intervals by their start times. Then, iterate through the sorted intervals from the second interval. If the start time of the current meeting is less than the end time of the previous meeting, it means there is an overlap, and we return `false`. If the loop completes without finding any overlaps, it means no meetings overlap, and we return `true`.
*   **Time complexity:** O(N log N) due to the sorting step.
*   **Space complexity:** O(1) if sorting is done in-place.

#### Merge Intervals

*   **Task:** *Given an array of `intervals` where `intervals[i] = [starti, endi]`, merge all overlapping intervals, and return an array of the non-overlapping intervals that cover all the intervals in the input.*
*   **Task summary:** Merge all overlapping intervals in a collection.
*   **Solution:** First, sort the input `intervals` array by their start times using `std::sort`. Then, iterate through the sorted intervals starting from the second interval (index 1). For each current interval (`intervals[i]`) and its previous interval (`intervals[i-1]`):
    -   If `intervals[i].start <= intervals[i-1].end` (meaning they overlap, including cases where `intervals[i].start == intervals[i-1].end`):
        -   Update the current interval's start to `intervals[i-1].start`.
        -   Update the current interval's end to `std::max(intervals[i].end, intervals[i-1].end)`.
        -   Mark the previous interval as invalid by setting `intervals[i-1].start = -1`.
    After the loop, use `std::erase_if` to remove all intervals from the array whose start time is -1.
*   **Time complexity:** O(N log N) due to the initial sort. The iteration and `std::erase_if` are O(N).
*   **Space complexity:** O(1) if the modification is done in-place on the input array.

#### Insert Interval

*   **Task:** *You are given an array of non-overlapping intervals `intervals` where `intervals[i] = [starti, endi]` are sorted by their start times, and a new interval `newInterval = [start, end]`. Insert `newInterval` into `intervals` such that `intervals` is still sorted in ascending order by `starti` and `intervals` still does not have any overlapping intervals (merge overlapping intervals if necessary).*
*   **Task summary:** Insert a new interval into a sorted list of non-overlapping intervals, merging if necessary.
*   **Solution:** Initialize an empty `result` vector and an integer `i = 0` to iterate through the `intervals` array.
    1.  **Before overlap:** While `i` is less than the size of `intervals` and `intervals[i][1] < newInterval[0]`, add `intervals[i]` to `result` and increment `i`.
    2.  **Overlap:** While `i` is less than the size of `intervals` and `intervals[i][0] <= newInterval[1]`, merge `intervals[i]` into `newInterval`. Update `newInterval[0] = std::min(newInterval[0], intervals[i][0])` and `newInterval[1] = std::max(newInterval[1], intervals[i][1])`. Increment `i`.
    3.  **Add merged/new interval:** Add the (potentially extended) `newInterval` to `result`.
    4.  **After overlap:** While `i` is less than the size of `intervals`, add `intervals[i]` to `result` and increment `i`.
*   **Time complexity:** O(N), as we iterate through the intervals once.
*   **Space complexity:** O(N) for the `result` vector.