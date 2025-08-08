## Trie

#### Implement Trie

* *A trie (pronounced as "try") or prefix tree is a tree data structure used to efficiently store and retrieve keys in a dataset of strings. There are various applications of this data structure, such as autocomplete and spellchecker. Implement the Trie class: Trie() Initializes the trie object. void insert(String word) Inserts the string word into the trie. boolean search(String word) Returns true if the string word is in the trie (i.e., was inserted before), and false otherwise. boolean startsWith(String prefix) Returns true if there is a previously inserted string that has the prefix, and false otherwise.*
*   **Description:** Implement a Trie (prefix tree) with `insert`, `search`, and `startsWith` methods. Use a `struct Node` with a boolean `isEnd` and an array of 26 `shared_ptr<Node>` children. Map characters to indices using `idx = c - 'a'`.
*   **Time Complexity:** `insert`: O(L), `search`: O(L), `startsWith`: O(L), where L is the length of the word/prefix.
*   **Space Complexity:** O(N*L) in the worst case, where N is the number of words and L is the average length of words, as each character might create a new node.

#### Search Suggestions System

* *You are given an array of strings products and a string searchWord. Design a system that suggests at most three product names from products after each character of searchWord is typed. Suggested products should have a common prefix with searchWord. If there are more than three products with a common prefix, return the three products that are lexicographically smallest. Return a list of lists of the suggested products after each character of searchWord is typed.*
*   **Description:** Use a Trie to store the products. Implement a `suggest(const string & prefix, const int maxSuggestions)` function within the Trie structure to return a vector of suggested words.
*   **Time Complexity:** Building the Trie: O(N*L), where N is the number of products and L is the average length of a product. For each character typed: O(L + M), where L is the length of the current prefix and M is the number of characters in the suggested words.
*   **Space Complexity:** O(N*L) for storing the Trie.

