## Stack/Queue

#### Valid Parentheses

* **Task:** Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid. An input string is valid if: Open brackets must be closed by the same type of brackets. Open brackets must be closed in the correct order. Every close bracket has a corresponding open bracket of the same type.
* **Task summary:** Check if a string of parentheses is valid.
* **Solution 1 (Stack-based):** Use a `std::stack`. For an opening bracket, push it onto the stack. For a closing bracket, if the stack is empty or its top doesn't match, the string is invalid; otherwise, pop the stack. The string is valid if the stack is empty after the loop.
* **Time complexity:** O(N), Space: O(N).
* **Space complexity:** O(N).

#### Remove All Adjacent Duplicates In String

* **Task:** You are given a string s consisting of lowercase English letters. A duplicate removal consists of choosing two adjacent and equal letters and removing them. We repeatedly make duplicate removals on s until we no longer can. Return the final string after all such duplicate removals have been made. It can be proven that the answer is unique.
* **Task summary:** Remove all adjacent duplicate characters from a string.
* **Solution 1 (Stack-based):** Use a `std::vector<char>` to simulate a stack. Iterate through the input string character by character. If the vector is not empty and the current character `c` is equal to the last character in the vector (`stack.back()`), then pop the last character from the vector. Otherwise, push the current character `c` onto the vector. Finally, construct the result string from the characters remaining in the vector.
* **Time complexity:** O(N), Space: O(N).
* **Space complexity:** O(N).

#### Removing Stars from a String

* **Task:** You are given a string s, which contains stars *. In one operation, you can: Choose a star in s. Remove the closest non-star character to its left, as well as remove the star itself. Return the string after all stars have been removed.
* **Task summary:** Remove characters and stars from a string based on backspace-like rules.
* **Solution 1 (Stack-based):** Use `std::vector` as a stack. Iterate through the string, pushing non-`*` characters onto the stack and popping for `*`.
* **Time complexity:** O(N), Space: O(N).
* **Space complexity:** O(N).

#### Simplify Path

* **Task:** Given a string path, which is an absolute path (starting with a slash '/') to a file or directory in a Unix-style file system, convert it to the simplified canonical path. In a Unix-style file system, a period '.' refers to the current directory, a double period '..' refers to the directory up a level, and multiple consecutive slashes (e.g., "//") are treated as a single slash. For this problem, any other format of periods (e.g., "...") are treated as file/directory names. The canonical path should have the following format: The path starts with a single slash '/'. Any two directories are separated by a single slash '/'. The path does not end with a trailing '/'. The path only contains the directories on the path from the root directory to the target file or directory (i.e., no '.' or '..')
* **Task summary:** Simplify a Unix-style absolute file path.
* **Solution:** Use a `std::vector<std::string>` as a stack. Iterate through the path character by character to build directory names. When a `/` is encountered, it signals the end of a component. This component is then processed: if it is `..`, pop an element from the stack. If it is not empty or `.`, push the component onto the stack. After the loop, there might be a final component to process. Finally, join the elements in the stack with `/` to construct the final simplified path, ensuring it starts with a `/`. If the stack is empty, the result is simply `/`.
* **Time complexity:** O(N), Space: O(N).

#### Number of Recent Calls

* * **Task:** You have a RecentCounter class which counts the number of recent requests within a certain time frame. Implement the RecentCounter class: RecentCounter() Initializes the counter with zero recent requests. int ping(t) Adds a new request at time t, where t represents some time in milliseconds, and returns the number of requests that happened in the inclusive time range [t - 3000, t]. It is guaranteed that every call to ping uses a strictly larger value of t than the previous call.
* **Task summary:** Implement a RecentCounter class to count requests within a 3000ms window.
* **Solution:** Use a `deque` to store timestamps of recent requests. When a new request arrives, remove all timestamps from the front of the deque that are older than 3000 milliseconds. Then, add the new request's timestamp to the back and return the size of the deque.
* **Time Complexity:** O(W) where W is the window size (3000 in this case). In the worst case, we might have to remove all elements from the previous window.
* **Space Complexity:** O(W) where W is the maximum number of requests in the 3000ms window.
*   **Description:** Use a `deque` to store timestamps of recent requests. When a new request arrives, remove all timestamps from the front of the deque that are older than 3000 milliseconds. Then, add the new request's timestamp to the back and return the size of the deque.
*   **Time Complexity:** O(W) where W is the window size (3000 in this case). In the worst case, we might have to remove all elements from the previous window.
*   **Space Complexity:** O(W) where W is the maximum number of requests in the 3000ms window.
