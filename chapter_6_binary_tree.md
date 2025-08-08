## Binary Tree

### DFS

#### Maximum Depth of Binary Tree

* *Given the root of a binary tree, return its maximum depth. A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.*
*   **Recursive post-order DFS:** The depth of a node is `1 + max(left_depth, right_depth)`. The base case is a null node, which has a depth of 0. Time: O(N), where N is the number of nodes, as we visit each node once. Space: O(H), where H is the height of the tree, due to the recursion stack. In the worst case (a skewed tree), this can be O(N).
*   **Iterative DFS:** Use a stack to store pairs of `(node, depth)`. Start with the root and a depth of 1. While the stack is not empty, pop a node, update the maximum depth found so far, and push its children with an incremented depth. Time: O(N). Space: O(H), for the stack.

#### Invert Binary Tree

* *Given the root of a binary tree, invert the tree, and return its root.*
*   **Recursive DFS:** For each node, swap its left and right children, then recursively call the function for the left and right children. The base case is a null node. Time: O(N), Space: O(H).
*   **Iterative DFS:** Use a stack. Push the root. While the stack is not empty, pop a node, swap its children, then push the new right and left children if they exist. Time: O(N), Space: O(H).

#### Same Tree

* *Given the roots of two binary trees p and q, return true if they are the same tree, and false otherwise. Two binary trees are considered the same if they are structurally identical, and the nodes have the same value.*
*   **Iterative DFS:** Use two stacks, one for each tree. Push the roots onto their respective stacks. While both stacks are not empty, pop a node from each. If one node is null and the other isn't, or if their values are different, the trees are not the same. Then, push the left and right children of both nodes onto their stacks. If the stacks are both empty at the end, the trees are the same. Time: O(N), Space: O(H).

#### Symmetric Tree

* *Given the root of a binary tree, check whether it is a mirror of itself (i.e., symmetric around its center).*
*   **Iterative DFS with Two Stacks:** Use two stacks. Push the root onto both stacks. While the stacks are not empty, pop a node from each. If one node is null and the other isn't, or if their values are different, the tree is not symmetric. For the first stack, push the left then the right child. For the second stack, push the right then the left child. If the stacks are both empty at the end, the tree is symmetric. Time: O(N), Space: O(H).

#### Path Sum

* *Given the root of a binary tree and an integer targetSum, return true if the tree has a root-to-leaf path such that adding up all the values along the path equals targetSum. A leaf is a node with no children.*
*   **Description:** Iterative DFS. Use a `std::vector` as a stack to store pairs of `(node, prev_sum)`. A leaf is a node where both its left and right children are null. In each iteration, calculate `curr_sum = prev_sum + node->val`. If the current node is a leaf, compare `curr_sum` to the `targetSum`. If they are equal, a path is found. If the loop finishes without finding a path, return false.
*   **Time Complexity:** O(N), as each node is visited once.
*   **Space Complexity:** O(H) in a balanced tree, where H is the height. In the worst case of a skewed tree, this can be O(N).

#### Delete Leaves With a Given Value

* *Given the root of a binary tree and an integer target, delete all the leaf nodes with value target. Note that once a leaf node is deleted, its parent can become a leaf node and might need to be deleted.*
*   **Solution 1 (Post-order DFS):** Use a recursive post-order traversal. For each node, recursively call the function on its left and right children and assign the results back to `node->left` and `node->right`. After the recursive calls, check if the current node is a leaf and its value matches the target. If so, return `nullptr` to delete it. Otherwise, return the node itself.
*   **Solution 2 (BFS-like):** Use a `std::deque` to store pairs of `(parent, node)`. Traverse the tree to populate the deque with all nodes from all levels (without removing anything). Then, iterate through the deque in reverse. For each `(parent, node)` pair, if `node` is a leaf with the target value, set the parent's corresponding child pointer (`parent->left` or `parent->right`) to `nullptr`.
*   **Time Complexity:** O(N) for both solutions, as each node is visited.
*   **Space Complexity:** O(H) for the recursive DFS due to the call stack (where H is the tree height), and O(N) for the BFS-like solution to store all nodes.

#### Lowest Common Ancestor of a Binary Tree

* *Given a binary tree, find the lowest common ancestor (LCA) of two given nodes in the tree. According to the definition of LCA on Wikipedia: “The lowest common ancestor is defined between two nodes p and q as the lowest node in T that has both p and q as descendants (where we allow a node to be a descendant of itself).”*
*   **Description:** Use a post-order recursive DFS. The function `TreeNode* lowestCommonAncestor(TreeNode* root, TreeNode* p, TreeNode* q)` returns the LCA. If the current node is `null`, `p`, or `q`, return the current node. Recursively call `lowestCommonAncestor` on the left and right children. If both recursive calls return non-null nodes, it means `p` is in one subtree and `q` is in the other, so the current node is the LCA. Otherwise, return the non-null result from the left or right subtree.
*   **Time Complexity:** O(N), where N is the number of nodes, as we visit each node once.
*   **Space Complexity:** O(H), where H is the height of the tree, due to the recursion stack.

### BST

#### Search in a Binary Search Tree

* *You are given the root of a binary search tree (BST) and an integer val. Find the node in the BST that the node's value equals val and return the subtree rooted with that node. If such a node does not exist, return null.*
*   **Description:** Start at the root. While the current node is not null, compare its value with the target. If they match, return the node. If the target is smaller, move to the left child; otherwise, move to the right child. If the loop finishes, the value is not in the tree.
*   **Time Complexity:** O(H), where H is the height of the tree. For a balanced tree, this is O(log N). In the worst case of a skewed tree, it's O(N).
*   **Space Complexity:** O(1) for the iterative approach.

#### Insert into a Binary Search Tree

* *You are given the root of a binary search tree (BST) and a value to insert into the tree. Return the root of the BST after the insertion. It is guaranteed that the new value does not exist in the original BST. There can be multiple valid ways for the insertion to happen; any of them will be accepted.*
*   **Description:** If the root is null, create a new node and return it. Otherwise, start with `curr = root`. Loop as long as `curr` is not null. If the new value is less than `curr`'s value, check if `curr`'s left child is null. If it is, insert the new node there and break the loop. Otherwise, move to the left child. If the new value is greater than `curr`'s value, check if the right child is null. If it is, insert the new node there and break. Otherwise, move to the right child. Return the original root.
*   **Time Complexity:** O(H), where H is the height of the tree. For a balanced tree, this is O(log N). In the worst case of a skewed tree, it's O(N).
*   **Space Complexity:** O(1) for the iterative approach.

#### Validate Binary Search Tree

* *Given the root of a binary tree, determine if it is a valid binary search tree (BST). A valid BST is defined as follows: The left subtree of a node contains only nodes with keys less than the node's key. The right subtree of a node contains only nodes with keys greater than the node's key. Both the left and right subtrees must also be binary search trees.*
*   **Description (Iterative DFS with bounds):** Use an iterative DFS approach with a stack. The stack stores tuples of `(node, min_val, max_val)`. Start by pushing the root onto the stack with negative and positive infinity as the initial min and max bounds. While the stack is not empty, pop a node. If the node is null, continue. Check if the node's value is outside its valid range (`<= min` or `>= max`); if so, the tree is invalid. Then, push the left child onto the stack with an updated max bound of the current node's value, and push the right child with an updated min bound of the current node's value. If the loop completes, the tree is a valid BST.
*   **Description (In-order Traversal):** An in-order DFS traversal of a valid BST visits nodes in sorted order. Use a recursive in-order helper function that keeps track of the previously visited node's value (`prev`). To enable early termination, the helper function must return a boolean. The logic is: 1) Recurse on the left subtree. If it returns `false`, propagate `false` up. 2) Check if the current node's value is less than or equal to `prev`. If so, return `false`. 3) Update `prev` and recurse on the right subtree.
*   **Time Complexity:** O(N), as we visit each node once.
*   **Space Complexity:** O(H) for both the iterative stack and the recursive in-order traversal stack, where H is the height of the tree.

#### Balanced Binary Tree

* *Given a binary tree, determine if it is height-balanced. For this problem, a height-balanced binary tree is defined as: a binary tree in which the depth of the two subtrees of every node never differs by more than one.*
*   **Description:** Use post-order DFS to check if a binary tree is balanced. Implement a recursive helper function `checkHeight(node)` that returns the height of the subtree rooted at `node` if it's balanced, or -1 if it's unbalanced. The base case is a null node, which has a height of 0. For a non-null node, recursively call `checkHeight` on its left and right children. If either call returns -1, or if the absolute difference between the left and right heights is greater than 1, return -1 (unbalanced). Otherwise, return `1 + max(left_height, right_height)`. The main function calls `checkHeight(root)` and returns `true` if the result is not -1, `false` otherwise.
*   **Time Complexity:** O(N), as each node is visited once.
*   **Space Complexity:** O(H), where H is the height of the tree, due to the recursion stack.

#### Diameter of Binary Tree

* *Given the root of a binary tree, return the length of the diameter of the tree. The diameter of a binary tree is the length of the longest path between any two nodes in a tree. This path may or may not pass through the root. The length of a path between two nodes is represented by the number of edges between them.*
*   **Description:** Use a recursive post-order DFS approach. Define a helper function `checkMaxDiameter(node, maxDiameter)` that returns the height of the subtree rooted at `node`. Inside the helper, recursively call `checkMaxDiameter` on the left and right children to get their heights (`lHeight`, `rHeight`). Update `maxDiameter = max(maxDiameter, lHeight + rHeight)`. The height of the current node is `1 + max(lHeight, rHeight)`. The main function initializes `maxDiameter` to 0 and calls the helper on the root.
*   **Time Complexity:** O(N), as each node is visited once.
*   **Space Complexity:** O(H), where H is the height of the tree, due to the recursion stack.

### BFS

#### Binary Tree Level Order Traversal

* *Given the root of a binary tree, return the level order traversal of its nodes' values. (i.e., from left to right, level by level).*
*   **Description:** Use a `std::deque` for a breadth-first search (BFS). Start by pushing the root node into the deque. While the deque is not empty, get the number of nodes at the current level. Iterate that many times, processing each node: pop it from the front, add its value to the current level's results, and push its non-null children to the back of the deque. After the inner loop, add the current level's results to the final answer.
*   **Time Complexity:** O(N), as each node is visited once.
*   **Space Complexity:** O(W), where W is the maximum width of the tree. In the worst case (a complete binary tree), the last level can contain up to N/2 nodes, so space is O(N).

#### Find Largest Value in Each Tree Row

* *Given the root of a binary tree, return an array of the largest value in each row of the tree (0-indexed).*
*   **Description:** Use BFS with a `std::deque`. In each level of the traversal, keep track of the maximum value seen so far. After iterating through all nodes at a level, add the maximum value for that level to the result vector.
*   **Time Complexity:** O(N), as each node is visited once.
*   **Space Complexity:** O(W), where W is the maximum width of the tree.

#### Binary Tree Right Side View

* *Given the root of a binary tree, imagine yourself standing on the right side of it, return the values of the nodes you can see ordered from top to bottom.*
*   **Description:** Use BFS with a `std::deque`. For each level, the rightmost node is the last one processed in that level's loop. Store the value of this node in the result vector.
*   **Time Complexity:** O(N), as each node is visited once.
*   **Space Complexity:** O(W), where W is the maximum width of the tree.

#### Populating Next Right Pointers in Each Node II

* *Populate each next pointer to point to its next right node. If there is no next right node, the next pointer should be set to NULL. You may only use constant extra space. You may assume that it is a perfect binary tree (ie, all leaves are on the same level, and every parent has two children).*
*   **Description:** Use BFS with a `std::deque`, without storing nulls. For each level, iterate through the nodes. For each node, if it's not the last one in the level, set its `next` pointer to the next node in the deque (`q.front()`). Add non-null children to the queue for the next level's processing.
*   **Time Complexity:** O(N), as each node is visited once.
*   **Space Complexity:** O(W), where W is the maximum width of the tree.

#### Deepest Leaves Sum

* *Given the root of a binary tree, return the sum of values of its deepest leaves.*
*   **Description:** Use BFS with a `std::deque`. Initialize `lastLevelSum = 0`. For each level, calculate the sum of its nodes. After processing all nodes in a level, update `lastLevelSum` with the current level's sum. The final `lastLevelSum` will be the sum of the deepest leaves.
*   **Time Complexity:** O(N), as each node is visited once.
*   **Space Complexity:** O(W), where W is the maximum width of the tree.

#### Binary Tree Zigzag Level Order Traversal

* *Given the root of a binary tree, return the zigzag level order traversal of its nodes' values. (i.e., from left to right, then right to left for the next level and alternate between).*
*   **Description:** Use BFS with a `std::deque`. Iterate nodes as usual in BFS. For each level, initialize an array of values `vector<int> values(levelLen)`. During iteration, fill it from left to right or from right to left depending on the level, using `int val_idx = (level % 2 == 0) ? i : levelLen - 1 - i`.
*   **Time Complexity:** O(N), as each node is visited once.
*   **Space Complexity:** O(W), where W is the maximum width of the tree.
