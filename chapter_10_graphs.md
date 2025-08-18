## Graphs

### Graph Traversal

#### Find if Path Exists in Graph

* **Task:** There is a bi-directional graph with n vertices, where each vertex is labeled from 0 to n - 1. The edges in the graph are represented by a given 2D integer array edges, where edges[i] = [ui, vi] indicates that there is an edge between vertex ui and vertex vi. Every vertex pair is connected by at most one edge, and no vertex has an edge to itself. You want to determine if there is a valid path that exists from vertex source to vertex destination.
* **Task summary:** Determine if there is a path between two vertices in a graph.
* **Solution:** Parse the input array to create an adjacency list using unordered_map<int,vector<int>>. Then use classical BFS starting from the source vertex to find if a path exists to the destination vertex.
* **Time complexity:** O(V + E) where V is the number of vertices and E is the number of edges.
* **Space complexity:** O(V + E) where O(V) is for storing the visited set and the BFS queue (in the worst case, all vertices might be in the queue), and O(E) is for storing the adjacency list representation of the graph.

#### Keys and Rooms

* **Task:** There are n rooms labeled from 0 to n - 1 and all the rooms are locked except for room 0. Your goal is to visit all the rooms. However, you cannot enter a locked room without having its key. When you visit a room, you may find a set of distinct keys in it. Each key has a number on it, denoting which room it unlocks, and you can take all of them with you to unlock the next rooms. Given an array rooms where rooms[i] is the set of keys that you can obtain if you visited room i, return true if you can visit all the rooms, or false otherwise.
* **Task summary:** Determine if all rooms can be visited starting from room 0.
* **Solution:** Use BFS or DFS starting from room 0. Keep track of visited rooms in a set. At the end, if the size of the visited set equals the total number of rooms, return true; otherwise, return false.
* **Time complexity:** O(N + E) where N is the number of rooms and E is the total number of keys.
* **Space complexity:** O(N) for the visited set and the queue/stack.