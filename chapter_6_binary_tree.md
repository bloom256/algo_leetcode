## Binary Tree

### DFS

#### Maximum Depth of Binary Tree

*   **Recursive DFS:** The depth of a node is `1 + max(left_depth, right_depth)`. The base case is a null node, which has a depth of 0. Time: O(N), where N is the number of nodes, as we visit each node once. Space: O(H), where H is the height of the tree, due to the recursion stack. In the worst case (a skewed tree), this can be O(N).
*   **Iterative DFS:** Use a stack to store pairs of `(node, depth)`. Start with the root and a depth of 1. While the stack is not empty, pop a node, update the maximum depth found so far, and push its children with an incremented depth. Time: O(N). Space: O(H), for the stack.

#### Invert Binary Tree

*   **Recursive DFS:** For each node, swap its left and right children, then recursively call the function for the left and right children. The base case is a null node. Time: O(N), Space: O(H).
*   **Iterative DFS:** Use a stack. Push the root. While the stack is not empty, pop a node, swap its children, then push the new right and left children if they exist. Time: O(N), Space: O(H).

#### Same Tree

*   **Iterative DFS:** Use two stacks, one for each tree. Push the roots onto their respective stacks. While both stacks are not empty, pop a node from each. If one node is null and the other isn't, or if their values are different, the trees are not the same. Then, push the left and right children of both nodes onto their stacks. If the stacks are both empty at the end, the trees are the same. Time: O(N), Space: O(H).

#### Symmetric Tree

*   **Iterative DFS with Two Stacks:** Use two stacks. Push the root onto both stacks. While the stacks are not empty, pop a node from each. If one node is null and the other isn't, or if their values are different, the tree is not symmetric. For the first stack, push the left then the right child. For the second stack, push the right then the left child. If the stacks are both empty at the end, the tree is symmetric. Time: O(N), Space: O(H).

#### Path Sum

*   **Description:** Iterative DFS. Use a `std::vector` as a stack to store pairs of `(node, prev_sum)`. A leaf is a node where both its left and right children are null. In each iteration, calculate `curr_sum = prev_sum + node->val`. If the current node is a leaf, compare `curr_sum` to the `targetSum`. If they are equal, a path is found. If the loop finishes without finding a path, return false.
*   **Time Complexity:** O(N), as each node is visited once.
*   **Space Complexity:** O(H) in a balanced tree, where H is the height. In the worst case of a skewed tree, this can be O(N).

#### Balanced Binary Tree

*   **Description:** Use a recursive helper function `checkHeight(node)` that returns the height of the subtree rooted at `node` if it's balanced, or -1 if it's unbalanced. The base case is a null node, which has a height of 0. For a non-null node, recursively call `checkHeight` on its left and right children. If either call returns -1, or if the absolute difference between the left and right heights is greater than 1, return -1 (unbalanced). Otherwise, return `1 + max(left_height, right_height)`. The main function calls `checkHeight(root)` and returns `true` if the result is not -1, `false` otherwise.
*   **Time Complexity:** O(N), as each node is visited once.
*   **Space Complexity:** O(H), where H is the height of the tree, due to the recursion stack.

### BST

#### Search in a Binary Search Tree

*   **Description:** Start at the root. While the current node is not null, compare its value with the target. If they match, return the node. If the target is smaller, move to the left child; otherwise, move to the right child. If the loop finishes, the value is not in the tree.
*   **Time Complexity:** O(H), where H is the height of the tree. For a balanced tree, this is O(log N). In the worst case of a skewed tree, it's O(N).
*   **Space Complexity:** O(1) for the iterative approach.

#### Insert into a Binary Search Tree

*   **Description:** If the root is null, create a new node and return it. Otherwise, start with `curr = root`. Loop as long as `curr` is not null. If the new value is less than `curr`'s value, check if `curr`'s left child is null. If it is, insert the new node there and break the loop. Otherwise, move to the left child. If the new value is greater than `curr`'s value, check if the right child is null. If it is, insert the new node there and break. Otherwise, move to the right child. Return the original root.
*   **Time Complexity:** O(H), where H is the height of the tree. For a balanced tree, this is O(log N). In the worst case of a skewed tree, it's O(N).
*   **Space Complexity:** O(1) for the iterative approach.

#### Validate Binary Search Tree

*   **Description (Iterative DFS with bounds):** Use an iterative DFS approach with a stack. The stack stores tuples of `(node, min_val, max_val)`. Start by pushing the root onto the stack with negative and positive infinity as the initial min and max bounds. While the stack is not empty, pop a node. If the node is null, continue. Check if the node's value is outside its valid range (`<= min` or `>= max`); if so, the tree is invalid. Then, push the left child onto the stack with an updated max bound of the current node's value, and push the right child with an updated min bound of the current node's value. If the loop completes, the tree is a valid BST.
*   **Description (In-order Traversal):** An in-order DFS traversal of a valid BST visits nodes in sorted order. Use a recursive in-order helper function that keeps track of the previously visited node's value (`prev`). To enable early termination, the helper function must return a boolean. The logic is: 1) Recurse on the left subtree. If it returns `false`, propagate `false` up. 2) Check if the current node's value is less than or equal to `prev`. If so, return `false`. 3) Update `prev` and recurse on the right subtree.
*   **Time Complexity:** O(N), as we visit each node once.
*   **Space Complexity:** O(H) for both the iterative stack and the recursive in-order traversal stack, where H is the height of the tree.
