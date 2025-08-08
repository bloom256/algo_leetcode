## Linked list

#### Design Linked List

* *Design your implementation of the linked list. You can choose to use a singly or doubly linked list. A node in a singly linked list should have two attributes: val and next. val is the value of the current node, and next is a pointer/reference to the next node. If you want to use the doubly linked list, you will need one more attribute prev to indicate the previous node in the linked list. Assume all nodes in the linked list are 0-indexed.*
*   Implement a singly linked list using a `dummyHead` and a `size` counter. The `dummyHead` simplifies edge cases. Key methods `addAtHead` and `addAtTail` can be efficiently implemented by calling the more general `addAtIndex(0, val)` and `addAtIndex(size, val)` respectively.
*   Time complexity: `get`, `addAtIndex`, `deleteAtIndex` are O(n). `addAtHead` is O(1), `addAtTail` is O(n).
*   Space complexity: O(n) to store the list elements.

#### Middle of the Linked List

* *Given the head of a singly linked list, return the middle node of the linked list. If there are two middle nodes, return the second middle node.*
* Use slow and fast pointers. Move slow by one step and fast by two (`fast = fast.next.next`). When fast reaches the end, slow is at the middle.
* Time complexity: O(n)
* Space complexity: O(1)

#### Delete the Middle of the Linked List

* *You are given the head of a linked list. Delete the middle node, and return the head of the modified linked list. The middle node of a linked list of size n is the ⌊n / 2⌋th node from the start using 0-based indexing. If n is even, there are two middle nodes, and we consider the first one as the middle.*
* Use slow and fast pointers, keeping a `prevSlow` pointer. When `fast` reaches the end, `slow` is the middle. To delete the middle node, set `prevSlow.next = slow.next`. Handle the edge case where the list has only one node, in which case `prevSlow` would be null.
* Time complexity: O(n)
* Space complexity: O(1)

#### Reverse Linked List

* *Given the head of a singly linked list, reverse the list, and return the reversed list.*
* Initialize `curr = head` and `prev = null`. Iterate through the list, at each step, store `curr.next` in a temporary variable, set `curr.next = prev`, then update `prev = curr` and `curr = temp`. Return `prev` at the end.
* Time complexity: O(n)
* Space complexity: O(1)

#### Palindrome Linked List

* *Given the head of a singly linked list, return true if it is a palindrome or false otherwise.*
* First, implement `findMiddle(head)` using slow and fast pointers. Then, implement `reverseList(head)` (as described above). Use these to find the middle of the original list and reverse its second half. Finally, compare the first half of the original list with the reversed second half. Iterate only as long as the reversed second half has elements, as the first half might be longer for odd-length lists.
* Time complexity: O(n)
* Space complexity: O(1)

#### Remove Duplicates from Sorted List

* *Given the head of a sorted linked list, delete all duplicates such that each element appears only once. Return the linked list sorted as well.*
* Iterate with a `curr` pointer while `curr` and `curr.next` exist. If `curr.val == curr.next.val`, set `curr.next = curr.next.next` (skipping the duplicate) and do not advance `curr`. Otherwise, move `curr` forward (`curr = curr.next`).
* Time complexity: O(n)
* Space complexity: O(1)

#### Remove Nth Node From End of List

* *Given the head of a linked list, remove the nth node from the end of the list and return its head.*
* Use two pointers, `p1` and `prev`. Initialize `p1 = head`. Move `p1` forward `n` times. Create a `dummyHead` and initialize `prev = dummyHead`. Then, move both `p1` and `prev` forward one step at a time until `p1` reaches the end of the list. At this point, `prev` will be pointing to the node *before* the one to be deleted. Delete the node by setting `prev.next = prev.next.next`. Return `dummyHead.next`.
* Time complexity: O(n)
* Space complexity: O(1)

#### Swap Nodes in Pairs

* *Given a linked list, swap every two adjacent nodes and return its head. You must solve the problem without modifying the values in the list's nodes (i.e., only nodes themselves may be changed).*
* Create a `dummyHead` and set `curr = dummyHead`. Iterate while `curr`, `curr.next`, and `curr.next.next` exist. Carefully re-link `curr`, `curr.next`, and `curr.next.next` to swap the pair, then move `curr` two steps forward.
* Time complexity: O(n)
* Space complexity: O(1)

#### Merge Two Sorted Lists

* *You are given the heads of two sorted linked lists list1 and list2. Merge the two lists in a one sorted list. The list should be made by splicing together the nodes of the first two lists. Return the head of the merged linked list.*
* Initialize `curr = dummyHead(0, nullptr)`. Iterate while both `list1` and `list2` exist. In each step, choose the smaller node from `list1` or `list2`, append it to `curr.next`, and then advance `curr` and the pointer of the list from which the node was taken. After the loop, append the remaining part of `list1` or `list2` to `curr.next` (no additional loop is needed for this step). Return `dummyHead.next`.
* Time complexity: O(m+n)
* Space complexity: O(1)

#### Linked List Cycle

* *Given head, the head of a linked list, determine if the linked list has a cycle in it. There is a cycle in a linked list if some node in the list can be reached again by continuously following the next pointer. Internally, pos is used to denote the index of the node that tail's next pointer is connected to. Note that pos is not passed as a parameter. Return true if there is a cycle in the linked list. Otherwise, return false.*
* Use fast and slow pointers. Move `fast` by one step in each iteration. Move `slow` by one step on every second iteration. If `fast` and `slow` meet, a cycle exists.
* Time complexity: O(n)
* Space complexity: O(1)
