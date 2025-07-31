## Stack/Queue

#### Valid Parentheses

*   **Stack-based:** Use a `std::stack`. For an opening bracket, push it onto the stack. For a closing bracket, if the stack is empty or its top doesn't match, the string is invalid; otherwise, pop the stack. The string is valid if the stack is empty after the loop. Time: O(N), Space: O(N).
*   **Two-pointers:** Use `reader` and `writer` pointers. For an opening bracket, copy it to `s[writer++]`. For a closing bracket, decrement `writer`. If `writer` becomes negative or `s[writer]` doesn't match the closing bracket, the string is invalid. Finally, the string is valid if `writer` is 0. Time: O(N), Space: O(1).

#### Remove All Adjacent Duplicates In String

*   **Stack-based:** Use a `std::vector<char>` to simulate a stack. Iterate through the input string character by character. If the vector is not empty and the current character `c` is equal to the last character in the vector (`stack.back()`), then pop the last character from the vector. Otherwise, push the current character `c` onto the vector. Finally, construct the result string from the characters remaining in the vector. Time: O(N), Space: O(N).
*   **Two-pointers:** Use `reader` and `writer` pointers. `writer` starts at 0. `reader` iterates through the string. If `writer > 0` and `s[reader]` is the same as `s[writer - 1]`, decrement `writer`. Otherwise, copy `s[reader]` to `s[writer++]`. Finally, resize the string to `writer`. Time: O(N), Space: O(1).

#### Removing Stars from a String

*   **Stack-based:** Use `std::vector` as a stack. Iterate through the string, pushing non-`*` characters onto the stack and popping for `*`. Time: O(N), Space: O(N).
*   **Two-pointers:** Use `reader` and `writer` pointers. `reader` iterates through the string. If `s[reader]` is not `*`, copy it to `s[writer++]`. If it is `*`, decrement `writer`. Finally, resize the string to `writer`. Time: O(N), Space: O(1).
