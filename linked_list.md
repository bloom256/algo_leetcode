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

### Reverse Linked List

*   Initialize `curr = head` and `prev = null`. Iterate through the list, at each step, store `curr.next` in a temporary variable, set `curr.next = prev`, then update `prev = curr` and `curr = temp`. Return `prev` at the end.
*   Time complexity: O(n)
*   Space complexity: O(1)

### Palindrome Linked List

*   First, implement `findMiddle(head)` using slow and fast pointers. Then, implement `reverseList(head)` (as described above). Use these to find the middle of the original list and reverse its second half. Finally, compare the first half of the original list with the reversed second half. Iterate only as long as the reversed second half has elements, as the first half might be longer for odd-length lists.
*   Time complexity: O(n)
*   Space complexity: O(1)

### Remove Duplicates from Sorted List

*   Iterate with a `curr` pointer while `curr` and `curr.next` exist. If `curr.val == curr.next.val`, set `curr.next = curr.next.next` (skipping the duplicate) and do not advance `curr`. Otherwise, move `curr` forward (`curr = curr.next`).
*   Time complexity: O(n)
*   Space complexity: O(1)

### Remove Nth Node From End of List

*   Use two pointers, `p1` and `prev`. Initialize `p1 = head`. Move `p1` forward `n` times. Create a `dummyHead` and initialize `prev = dummyHead`. Then, move both `p1` and `prev` forward one step at a time until `p1` reaches the end of the list. At this point, `prev` will be pointing to the node *before* the one to be deleted. Delete the node by setting `prev.next = prev.next.next`. Return `dummyHead.next`.
*   Time complexity: O(n)
*   Space complexity: O(1)

### Swap Nodes in Pairs

*   Create a `dummyHead` and set `curr = dummyHead`. Iterate while `curr`, `curr.next`, and `curr.next.next` exist. Carefully re-link `curr`, `curr.next`, and `curr.next.next` to swap the pair, then move `curr` two steps forward.
*   Time complexity: O(n)
*   Space complexity: O(1)

### Merge Two Sorted Lists

*   Initialize `curr = dummyHead(0, nullptr)`. Iterate while both `list1` and `list2` exist. In each step, choose the smaller node from `list1` or `list2`, append it to `curr.next`, and then advance `curr` and the pointer of the list from which the node was taken. After the loop, append the remaining part of `list1` or `list2` to `curr.next` (no additional loop is needed for this step). Return `dummyHead.next`.
*   Time complexity: O(m+n)
*   Space complexity: O(1)