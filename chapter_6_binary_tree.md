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
