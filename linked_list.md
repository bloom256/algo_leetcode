## Linked list

### Design Linked List

*   Implement a singly linked list using a `dummyHead` and a `size` counter. The `dummyHead` simplifies edge cases. Key methods `addAtHead` and `addAtTail` can be efficiently implemented by calling the more general `addAtIndex(0, val)` and `addAtIndex(size, val)` respectively.
*   Time complexity: `get`, `addAtIndex`, `deleteAtIndex` are O(n). `addAtHead` is O(1), `addAtTail` is O(n).
*   Space complexity: O(n) to store the list elements.