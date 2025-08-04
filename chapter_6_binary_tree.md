## Binary Tree

#### Maximum Depth of Binary Tree

*   **Recursive DFS:** The depth of a node is `1 + max(left_depth, right_depth)`. The base case is a null node, which has a depth of 0. Time: O(N), where N is the number of nodes, as we visit each node once. Space: O(H), where H is the height of the tree, due to the recursion stack. In the worst case (a skewed tree), this can be O(N).
*   **Iterative DFS:** Use a stack to store pairs of `(node, depth)`. Start with the root and a depth of 1. While the stack is not empty, pop a node, update the maximum depth found so far, and push its children with an incremented depth. Time: O(N). Space: O(H), for the stack.