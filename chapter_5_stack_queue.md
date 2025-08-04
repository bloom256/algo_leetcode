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

#### Simplify Path

*   **Stack with Manual Parsing:** Use a `std::vector<std::string>` as a stack. Iterate through the path character by character to build directory names. When a `/` is encountered, it signals the end of a component. This component is then processed: if it is `..`, pop an element from the stack. If it is not empty or `.`, push the component onto the stack. After the loop, there might be a final component to process. Finally, join the elements in the stack with `/` to construct the final simplified path, ensuring it starts with a `/`. If the stack is empty, the result is simply `/`. Time: O(N), Space: O(N).

#### Number of Recent Calls

*   **Description:** Use a `deque` to store timestamps of recent requests. When a new request arrives, remove all timestamps from the front of the deque that are older than 3000 milliseconds. Then, add the new request's timestamp to the back and return the size of the deque.
*   **Time Complexity:** O(W) where W is the window size (3000 in this case). In the worst case, we might have to remove all elements from the previous window.
*   **Space Complexity:** O(W) where W is the maximum number of requests in the 3000ms window.
