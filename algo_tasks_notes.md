## Two Pointers

### Reverse String

* Move from different directions.
* Time complexity: O(n)
* Space complexity: O(1)

### Valid Palindrome

* Move from different directions. Use tolower(), skip !isalnum()
* Time complexity: O(n)
* Space complexity: O(1)

### Two Sum Sorted

* Go from different directions. If (sum < target) - move left, if (sum > target) - move right, if equal - add to results.
* Time complexity: O(n)
* Space complexity: O(1)

### Two Sum

* Use visited hash map
* Time complexity: O(n)
* Space complexity: O(n)

### 3Sum

* Sort array, iterate other each element, for other two use 2SumSorted
* Time complexity: O(n^2)
* Space complexity: O(1) or O(n) depending on sorting implementation

### Squares of a Sorted Array

* Iterate negative part inverting it, then std::reverse it. Now std::inplace_merge two sorted parts of array. Finally square elements.
* Time complexity: O(n)
* Space complexity: O(1)

* **Alternative:** Use two pointers, one at the beginning and one at the end of the input array. Compare the absolute values of the elements at the two pointers, square the larger one, and place it at the end of the result array. Move the corresponding pointer inward and repeat until the pointers meet.
* Time complexity: O(n)
* Space complexity: O(n)