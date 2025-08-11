## Intervals

#### Meeting Rooms

*   **Task:** *Given an array of meeting time intervals where intervals[i] = [start, end], determine if a person could attend all meetings.*
*   **Task summary:** Check if any meetings in a list of time intervals overlap.
*   **Solution:** Sort the intervals by their start times. Then, iterate through the sorted intervals from the second interval. If the start time of the current meeting is less than the end time of the previous meeting, it means there is an overlap, and we return `false`. If the loop completes without finding any overlaps, it means no meetings overlap, and we return `true`.
*   **Time complexity:** O(N log N) due to the sorting step.
*   **Space complexity:** O(1) if sorting is done in-place.