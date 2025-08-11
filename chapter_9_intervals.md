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
