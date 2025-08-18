## Graphs

### Graph Traversal

#### Keys and Rooms

* **Task:** There are n rooms labeled from 0 to n - 1 and all the rooms are locked except for room 0. Your goal is to visit all the rooms. However, you cannot enter a locked room without having its key. When you visit a room, you may find a set of distinct keys in it. Each key has a number on it, denoting which room it unlocks, and you can take all of them with you to unlock the next rooms. Given an array rooms where rooms[i] is the set of keys that you can obtain if you visited room i, return true if you can visit all the rooms, or false otherwise.
* **Task summary:** Determine if all rooms can be visited starting from room 0.
* **Solution:** Use BFS or DFS starting from room 0. Keep track of visited rooms in a set. At the end, if the size of the visited set equals the total number of rooms, return true; otherwise, return false.
* **Time complexity:** O(N + E) where N is the number of rooms and E is the total number of keys.
* **Space complexity:** O(N) for the visited set and the queue/stack.