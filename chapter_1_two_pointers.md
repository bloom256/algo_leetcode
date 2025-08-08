## Two Pointers

### Moving pointers toward each other from opposite directions

#### Reverse String

* *Write a function that reverses a string. The input string is given as an array of characters s.*
* Move from different directions.
* Time complexity: O(n)
* Space complexity: O(1)

#### Valid Palindrome

* *A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.*
* Move from different directions. Use tolower(), skip !isalnum()
* Time complexity: O(n)
* Space complexity: O(1)

#### Two Sum Sorted

* *Given a 1-indexed array of integers numbers that is already sorted in non-decreasing order, find two numbers such that they add up to a specific target number. Let these two numbers be numbers[index1] and numbers[index2] where 1 <= index1 < index2 < numbers.length. Return the indices of the two numbers, index1 and index2, added by one as an integer array [index1, index2] of length 2.*
* Go from different directions. If (sum < target) - move left, if (sum > target) - move right, if equal - add to results.
* Time complexity: O(n)
* Space complexity: O(1)

#### 3Sum

* *Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0. Notice that the solution set must not contain duplicate triplets.*
* Sort array, iterate other each element, for other two use 2SumSorted
* Time complexity: O(n^2)
* Space complexity: O(1) or O(n) depending on sorting implementation

#### Squares of a Sorted Array

* *Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.*
* Iterate negative part inverting it (change sing), then std::reverse it. Now std::inplace_merge two sorted parts of array. Finally square elements.
* Time complexity: O(n)
* Space complexity: O(1)

* **Alternative:** Use two pointers, one at the beginning and one at the end of the input array. Compare the absolute values of the elements at the two pointers, square the larger one, and place it at the end of the result array. Move the corresponding pointer inward and repeat until the pointers meet.
* Time complexity: O(n)
* Space complexity: O(n)

#### Container with Most Water

* *You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]). Find two lines that together with the x-axis form a container, such that the container contains the most water.*
* Move pointers from opposite directions. Always move the pointer to the shorter line. This is because the shorter line has already made its best contribution with the current or one of the previous opposite lines. Moving it to the next line, regardless of whether it's shorter or longer, is the only way to potentially find a larger area, as the height is limited by the shorter line, not the longer one.
* Time complexity: O(n)
* Space complexity: O(1)

### Moving pointers from same side

#### Remove Duplicates from Sorted Array

* *Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same. Then return the number of unique elements in nums.*
* Set 'next' and 'curr' pointers to the first element. Iterate 'next' over all values. If it points to value not equal to value pointed by 'curr', we found next 'curr', move 'curr' to next element and write 'next' value to it.
* Time complexity: O(n)
* Space complexity: O(1)

* **Alternative:** Use `std::unique` and `std::erase`.
* Time complexity: O(n)
* Space complexity: O(1)

#### Move Zeros

* *Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.*
* Set two pointers "writer" and "reader" to beginning. Iterate reader over all elements. If it points to non-zero, swap elements and move writer to next position. Basically we rewrite each non-zero element, even if it was on the same place, skipping zero elements.
* Time complexity: O(n)
* Space complexity: O(1)

* **Alternative:** Use `std::remove` to move non-zero elements to the beginning, then `std::fill` the remaining elements at the end with zeros.
* Time complexity: O(n)
* Space complexity: O(1)

#### Is Subsequence

* *Given two strings s and t, return true if s is a subsequence of t, or false otherwise.*
* Set one pointer to the beginning of the subsequence. Iterate another pointer through the main string. If the main string pointer matches the character at the subsequence pointer, advance the subsequence pointer. If the subsequence pointer reaches the end of the subsequence, it means all characters were found in order, so return true. If the main string is exhausted before the subsequence pointer reaches its end, return false.
* Time complexity: O(N) where N is the length of the main string.
* Space complexity: O(1)

#### Backspace String Compare

* *Given two strings s and t, return true if they are equal when both are typed into empty text editors. '#' means a backspace character. Note that after backspacing an empty text, the text will still be empty.*
* **Classic Solution:** Use two pointers and scan strings backward, skipping backspaces and removed characters. You need to be very careful with edge cases.
* Time complexity: O(N + M) where N and M are lengths of the strings.
* Space complexity: O(1)

* **Alternative Solution:** Create a helper function `applyBackspaces` which actually removes characters from the string, moving them to the end of the string, similar to "Move Zeros" with writer and reader pointers (move writer back if a backspace is encountered). This is simpler and more elegant, but not optimal as you have to change the string in-place, which might not be desired.
* Time complexity: O(N + M)
* Space complexity: O(1) (if in-place modification is allowed, otherwise O(N+M) for new strings)

#### Merge Sorted Array

* *You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively. Merge nums2 into nums1 as one sorted array. The final sorted array should not be returned by the function, but instead be stored inside the array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote the elements that should be merged, and the last n elements are set to 0 and should be ignored. nums2 has a length of n.*
* Use two pointers moving filled parts of arrays backward, and pointer 'w' pointing to the end of the first array (unfilled part). Move all 3 pointers backward. Don't forget to finish iteration over the second array after the main cycle to finish filling of the 1st array.
* Time complexity: O(N + M)
* Space complexity: O(1)

