## Stack/Queue

### Valid Parentheses

*   Use a `std::stack`. Iterate through the input string. If an opening parenthesis is encountered, use `push()` to add it to the stack. If a closing parenthesis is encountered, use `empty()` to check if the stack is empty or `top()` to check if the top of the stack does not match the corresponding opening parenthesis. If either is true, the string is invalid. Otherwise, use `pop()` to remove the top element. After iterating through the string, use `empty()` to check if the stack is empty. If it is, the string is valid; otherwise, it is invalid.
*   Time complexity: O(n)
*   Space complexity: O(n)

### Remove All Adjacent Duplicates In String

*   Use a `std::vector<char>` to simulate a stack. Iterate through the input string character by character. If the vector is not empty and the current character `c` is equal to the last character in the vector (`stack.back()`), then pop the last character from the vector. Otherwise, push the current character `c` onto the vector. Finally, construct the result string from the characters remaining in the vector.
*   Time complexity: O(n)
*   Space complexity: O(n)

### Removing Stars from a String

*   **Stack-based:** Use `std::vector` as a stack. Iterate through the string, pushing non-`*` characters onto the stack and popping for `*`. Time: O(N), Space: O(N).
*   **Two-pointers:** Use `reader` and `writer` pointers. `reader` iterates through the string. If `s[reader]` is not `*`, copy it to `s[writer++]`. If it is `*`, decrement `writer`. Finally, resize the string to `writer`. Time: O(N), Space: O(1).