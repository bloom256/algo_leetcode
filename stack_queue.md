## Stack/Queue

### Valid Parentheses

*   Use a `std::stack`. Iterate through the input string. If an opening parenthesis is encountered, use `push()` to add it to the stack. If a closing parenthesis is encountered, use `empty()` to check if the stack is empty or `top()` to check if the top of the stack does not match the corresponding opening parenthesis. If either is true, the string is invalid. Otherwise, use `pop()` to remove the top element. After iterating through the string, use `empty()` to check if the stack is empty. If it is, the string is valid; otherwise, it is invalid.
*   Time complexity: O(n)
*   Space complexity: O(n)