## Linked list

### Design Linked List

*   Implement a singly linked list using a `dummyHead` and a `size` counter. The `dummyHead` simplifies edge cases. Key methods `addAtHead` and `addAtTail` can be efficiently implemented by calling the more general `addAtIndex(0, val)` and `addAtIndex(size, val)` respectively.
*   Time complexity: `get`, `addAtIndex`, `deleteAtIndex` are O(n). `addAtHead` is O(1), `addAtTail` is O(n).
*   Space complexity: O(n) to store the list elements.

### Middle of the Linked List

*   Use slow and fast pointers. Move slow by one step and fast by two (`fast = fast.next.next`). When fast reaches the end, slow is at the middle.
*   Time complexity: O(n)
*   Space complexity: O(1)

### Delete the Middle of the Linked List

*   Use slow and fast pointers, keeping a `prevSlow` pointer. When `fast` reaches the end, `slow` is the middle. To delete the middle node, set `prevSlow.next = slow.next`. Handle the edge case where the list has only one node, in which case `prevSlow` would be null.
*   Time complexity: O(n)
*   Space complexity: O(1)