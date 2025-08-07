## Trie

#### Implement Trie

*   **Description:** Implement a Trie (prefix tree) with `insert`, `search`, and `startsWith` methods. Use a `struct Node` with a boolean `isEnd` and an array of 26 `shared_ptr<Node>` children. Map characters to indices using `idx = c - 'a'`.
*   **Time Complexity:** `insert`: O(L), `search`: O(L), `startsWith`: O(L), where L is the length of the word/prefix.
*   **Space Complexity:** O(N*L) in the worst case, where N is the number of words and L is the average length of words, as each character might create a new node.

#### Search Suggestions System

*   **Description:** Use a Trie to store the products. Implement a `suggest(const string & prefix, const int maxSuggestions)` function within the Trie structure to return a vector of suggested words.
*   **Time Complexity:** Building the Trie: O(N*L), where N is the number of products and L is the average length of a product. For each character typed: O(L + M), where L is the length of the current prefix and M is the number of characters in the suggested words.
*   **Space Complexity:** O(N*L) for storing the Trie.

