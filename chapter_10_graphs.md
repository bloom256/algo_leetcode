## Graphs

### Graph Traversal

#### Clone Graph

* **Task:** Given a reference of a node in a connected undirected graph, return a deep copy (clone) of the graph. Each node in the graph contains a value (int) and a list of its neighbors.
* **Task summary:** Create a deep copy of a graph.
* **Solution:** Use BFS (or DFS) to traverse the graph. Store cloned nodes in a visited hash map like this - unordered_map<Node*, Node*>. When we visit a node, we create its clone and store the mapping. For each neighbor of the current node, we check if it has been cloned already. If not, we create a clone and add it to the queue/stack. Finally, we connect the cloned nodes according to the original graph structure.
* **Time complexity:** O(N + M) where N is the number of nodes and M is the number of edges.
* **Space complexity:** O(N) for the hash map and the BFS/DFS queue/stack.

#### Minimum Number of Vertices to Reach All Nodes

* **Task:** Given a directed acyclic graph, with n vertices numbered from 0 to n-1, and an array edges where edges[i] = [fromi, toi] represents a directed edge from node fromi to node toi. Find the smallest set of vertices from which all nodes in the graph are reachable. It's guaranteed that a unique solution exists.
* **Task summary:** Find the minimum set of vertices from which all nodes in a directed graph are reachable.
* **Solution:** The trick is that all nodes with in-degree equal to 0 form the required set. Initialize vector<bool> hasInEdges(n, false). Then iterate all input edges filling hasInEdges. Finally iterate 0..n to find nodes that has hasInEdges[i] == false.
* **Time complexity:** O(E + V) where E is the number of edges and V is the number of vertices.
* **Space complexity:** O(V) for the hasInEdges vector.

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