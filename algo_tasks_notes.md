## Two Pointers

### Moving pointers toward each other from opposite directions

#### Reverse String

* Move from different directions.
* Time complexity: O(n)
* Space complexity: O(1)

#### Valid Palindrome

* Move from different directions. Use tolower(), skip !isalnum()
* Time complexity: O(n)
* Space complexity: O(1)

#### Two Sum Sorted

* Go from different directions. If (sum < target) - move left, if (sum > target) - move right, if equal - add to results.
* Time complexity: O(n)
* Space complexity: O(1)

#### 3Sum

* Sort array, iterate other each element, for other two use 2SumSorted
* Time complexity: O(n^2)
* Space complexity: O(1) or O(n) depending on sorting implementation

#### Squares of a Sorted Array

* Iterate negative part inverting it (change sing), then std::reverse it. Now std::inplace_merge two sorted parts of array. Finally square elements.
* Time complexity: O(n)
* Space complexity: O(1)

* **Alternative:** Use two pointers, one at the beginning and one at the end of the input array. Compare the absolute values of the elements at the two pointers, square the larger one, and place it at the end of the result array. Move the corresponding pointer inward and repeat until the pointers meet.
* Time complexity: O(n)
* Space complexity: O(n)

#### Container with Most Water

* Move pointers from opposite directions. Always move the pointer to the shorter line. This is because the shorter line has already made its best contribution with the current or one of the previous opposite lines. Moving it to the next line, regardless of whether it's shorter or longer, is the only way to potentially find a larger area, as the height is limited by the shorter line, not the longer one.
* Time complexity: O(n)
* Space complexity: O(1)

### Moving pointers from same side

#### Remove Duplicates from Sorted Array

* Set 'next' and 'curr' pointers to the first element. Iterate 'next' over all values. If it points to value not equal to value pointed by 'curr', we found next 'curr', move 'curr' to next element and write 'next' value to it.
* Time complexity: O(n)
* Space complexity: O(1)

* **Alternative:** Use `std::unique` and `std::erase`.
* Time complexity: O(n)
* Space complexity: O(1)

#### Move Zeros

* Set two pointers "writer" and "reader" to beginning. Iterate reader over all elements. If it points to non-zero, swap elements and move writer to next position. Basically we rewrite each non-zero element, even if it was on the same place, skipping zero elements.
* Time complexity: O(n)
* Space complexity: O(1)

* **Alternative:** Use `std::remove` to move non-zero elements to the beginning, then `std::fill` the remaining elements at the end with zeros.
* Time complexity: O(n)
* Space complexity: O(1)

#### Is Subsequence

* Set one pointer to the beginning of the subsequence. Iterate another pointer through the main string. If the main string pointer matches the character at the subsequence pointer, advance the subsequence pointer. If the subsequence pointer reaches the end of the subsequence, it means all characters were found in order, so return true. If the main string is exhausted before the subsequence pointer reaches its end, return false.
* Time complexity: O(N) where N is the length of the main string.
* Space complexity: O(1)

#### Backspace String Compare

* **Classic Solution:** Use two pointers and scan strings backward, skipping backspaces and removed characters. You need to be very careful with edge cases.
* Time complexity: O(N + M) where N and M are lengths of the strings.
* Space complexity: O(1)

* **Alternative Solution:** Create a helper function `applyBackspaces` which actually removes characters from the string, moving them to the end of the string, similar to "Move Zeros" with writer and reader pointers (move writer back if a backspace is encountered). This is simpler and more elegant, but not optimal as you have to change the string in-place, which might not be desired.
* Time complexity: O(N + M)
* Space complexity: O(1) (if in-place modification is allowed, otherwise O(N+M) for new strings)

#### Merge Sorted Array

* Use two pointers moving filled parts of arrays backward, and pointer 'w' pointing to the end of the first array (unfilled part). Move all 3 pointers backward. Don't forget to finish iteration over the second array after the main cycle to finish filling of the 1st array.
* Time complexity: O(N + M)
* Space complexity: O(1)

### Other Two Pointer Patterns

#### Two Sum

* Use 'visited' hash map
* Time complexity: O(n)
* Space complexity: O(n)