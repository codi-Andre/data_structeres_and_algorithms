# This challenges makes part of NeetCode150 list by [NeetCode](https://neetcode.io/).  

The objective is to learning data structures and algorithms and their big O efficiency.  

To run the tests suit use the command `odin test . --all-packages` in the tests directory.  

## Arrays and Hashing  

### 1. Contains Duplicate  

Given an integer array `nums`, return `true` if any value appears more than once in the array, otherwise return `false`.  

Example 1:  

```
Input: nums = [1, 2, 3, 3]  

Output: true  
```

Example 2:  

```
Input: nums = [1, 2, 3, 4]  

Output: false  
```

Constraints:  

- `0 <= nums.length <= 10^5`  
- `-10^9 <= nums[i] <= 10^9`  

### 2. Valid Anagram  

Given two strings `s` and `t`, return `true` if the two strings are anagrams of each other, otherwise return `false`.  

Two strings are anagrams if they contain the same characters, with each character appearing the same number of times, regardless of order.  

Example 1:  

```
Input: s = "racecar", t = "carrace"  

Output: true  
```

Example 2:  

```
Input: s = "jar", t = "jam"  

Output: false  
```

Example 3:  

```
Input: s = "x", t = "x"  

Output: true  
```

Constraints:  

- `1 <= s.length, t.length <= 5 * 10^4`  
- `s and t consist of lowercase English letters.`  

### 3. Two Sum  

Given an array of integers `nums` and an integer `target`, return the indices `i` and `j` such that `nums[i] + nums[j] == target` and `i != j`.  

You may assume that every input has exactly one pair of indices `i` and `j` that satisfy the condition.  

Return the answer with the smaller index first.  

Example 1:  

```
Input: nums = [3,4,5,6], target = 7  

Output: [0,1]  
```

Explanation: `nums[0] + nums[1] == 7`, so we return `[0, 1]`.  

Example 2:  

```
Input: nums = [4,5,6], target = 10  

Output: [0,2]  
```

Example 3:  

```
Input: nums = [5,5], target = 10  

Output: [0,1]  
```

Constraints:  

- `2 <= nums.length <= 1000`  
- `-10,000,000 <= nums[i] <= 10,000,000`  
- `-10,000,000 <= target <= 10,000,000`  
- Only one valid answer exists.  

### 4. Group Anagrams  

Given an array of strings `strs`, group all anagrams together into sub lists. You may return the output in any order.  

An anagram is a string that contains the exact same characters as another string, but the order of the characters can be different.  

Example 1:  

```
Input: strs = ["act","pots","tops","cat","stop","hat"]  

Output: [["hat"],["act", "cat"],["stop", "pots", "tops"]]  
```

Example 2:  

```
Input: strs = ["x"]  

Output: [["x"]]  
```

Example 3:  

```
Input: strs = [""]  

Output: [[""]]  
```

Constraints:  

- `1 <= strs.length <= 10000.`  
- `0 <= strs[i].length <= 100`  
- `strs[i] is made up of lowercase English letters.`

### 5. Top K Frequent Elements  

Given an integer array `nums` and an integer `k`, return the `k` most frequent elements within the array.  

The test cases are generated such that the answer is always unique.  

You may return the output in any order.  

Example 1:  

```
Input: nums = [1,2,2,3,3,3], k = 2  

Output: [2,3]  
```

Example 2:  

```
Input: nums = [7,7], k = 1  

Output: [7]  
```

Constraints:  

- `1 <= nums.length <= 10^4.`  
- `-1000 <= nums[i] <= 1000`  
- `1 <= k <= number of distinct elements in nums.`  

### 6. Encode and Decode Strings

Design an algorithm to encode a list of strings to a string. The encoded string is then sent over the network and is decoded back to the original list of strings.  

Machine 1 (sender) has the function:  

```
String encode(List<String> strs) {
    // ... your code
    return encoded_string;
}
```

Machine 2 (receiver) has the function:  

```
List<String> decode(String encoded_string) {
    // ... your code
    return decoded_strs;
}
```

So Machine 1 does:  

```
String encoded_string = encode(strs);
```

and Machine 2 does:  

```
List<String> decoded_strs = decode(encoded_string);
```

`decoded_strs` in Machine 2 should be the same as the input `strs` in Machine 1.  

Implement the `encode` and `decode` methods.  

Example 1:  

```
Input: strs = ["Hello","World"]

Output: ["Hello","World"]
```

Explanation:  

```
Solution solution = new Solution();
String encoded_string = solution.encode(strs);

// Machine 1 ---encoded_string---> Machine 2

List<String> decoded_strs = solution.decode(encoded_string);
```

Example 2:  

```
Input: strs = [""]

Output: [""]
```

Constraints:  

- `0 <= strs.length < 100`  
- `0 <= strs[i].length < 200`  
- `strs[i]` contains any possible characters out of `256` valid ASCII characters.  

### 7. Products of Array Except Self  

Given an integer array `nums`, return an array `output` where `output[i]` is the product of all the elements of `nums` except `nums[i]`.  

Each product is guaranteed to fit in a 32-bit integer.  

Follow-up: Could you solve it in O(n) time without using the division operation?  

Example 1:  

```
Input: nums = [1,2,4,6]

Output: [48,24,12,8]
```

Example 2:  

```
Input: nums = [-1,0,1,2,3]

Output: [0,-6,0,0,0]
```

Constraints:  

- `2 <= nums.length <= 100,000`  
- `-30 <= nums[i] <= 30`  
- The product of any prefix or suffix of `nums` is guaranteed to fit in a 32-bit integer.  

### 8. Valid Sudoku  

You are given a `9 x 9` Sudoku board `board`. A Sudoku board is valid if the following rules are followed:

Each row must contain the digits `1-9` without duplicates.
Each column must contain the digits `1-9` without duplicates.
Each of the nine `3 x 3` sub-boxes of the grid must contain the digits `1-9` without duplicates.
Return `true` if the Sudoku board is valid, otherwise return `false`

**Note: A board does not need to be full or be solvable to be valid.**

Example 1:

```
Input: board =

[['1','2','.','.','3','.','.','.','.'],
 ['4','.','.','5','.','.','.','.','.'],
 ['.','9','8','.','.','.','.','.','3'],
 ['5','.','.','.','6','.','.','.','4'],
 ['.','.','.','8','.','3','.','.','5'],
 ['7','.','.','.','2','.','.','.','6'],
 ['.','.','.','.','.','.','2','.','.'],
 ['.','.','.','4','1','9','.','.','8'],
 ['.','.','.','.','8','.','.','7','9']]

Output: true
```

Example 2:

```
Input: board =

[['1','2','.','.','3','.','.','.','.'],
 ['4','.','.','5','.','.','.','.','.'],
 ['.','9','1','.','.','.','.','.','3'],
 ['5','.','.','.','6','.','.','.','4'],
 ['.','.','.','8','.','3','.','.','5'],
 ['7','.','.','.','2','.','.','.','6'],
 ['.','.','.','.','.','.','2','.','.'],
 ['.','.','.','4','1','9','.','.','8'],
 ['.','.','.','.','8','.','.','7','9']]

Output: false
```

Explanation: There are two 1's in the top-left 3x3 sub-box.

Constraints:

- `board.length == 9`
- `board[i].length == 9`
- `board[i][j]` is a digit `1-9` or `'.'`.

### 9. Longest Consecutive Sequence

Given an array of integers `nums`, return the length of the longest consecutive sequence of elements that can be formed.

A consecutive sequence is a sequence of elements in which each element is exactly `1` greater than the previous element. The elements do not have to be consecutive in the original array.

You must write an algorithm that runs in `O(n)` time.

Example 1:

```
Input: nums = [2,20,4,10,3,4,5]

Output: 4
```

Explanation: The longest consecutive sequence is `[2, 3, 4, 5]`.

Example 2:

```
Input: nums = [0,3,2,5,4,6,1,1]

Output: 7
```

Constraints:

- `0 <= nums.length <= 100,000`
- `-10^9 <= nums[i] <= 10^9`

## Stack

### 10. Valid Parentheses

You are given a string `s` consisting of the following characters: `'('`, `')'`, `'{'`, `'}'`, `'['` and `']'`.

The input string `s` is valid if and only if:

Every open bracket is closed by the same type of close bracket.

Open brackets are closed in the correct order.

Every close bracket has a corresponding open bracket of the same type.

Return `true` if `s` is a valid string, and `false` otherwise.

Example 1:

```
Input: s = "[]"

Output: true
```

Example 2:

```
Input: s = "([{}])"

Output: true
```

Example 3:

```
Input: s = "[(])"

Output: false
```

Explanation: The brackets are not closed in the correct order.

Constraints:

`1 <= s.length <= 1000`

### 11. Min Stack

Design a stack class that supports the `push`, `pop`, `top`, and `getMin` operations.

`MinStack()` initializes the stack object.
`void push(int val)` pushes the element `val` onto the stack.
`void pop()` removes the element on the top of the stack.
`int top()` gets the top element of the stack.
`int getMin()` retrieves the minimum element in the stack.

Each function should run in O(1) time.

Example 1:

```
Input: ["MinStack", "push", 1, "push", 2, "push", 0, "getMin", "pop", "top", "getMin"]

Output: [null,null,null,null,0,null,2,1]
```

Explanation:

```
MinStack minStack = new MinStack();
minStack.push(1);
minStack.push(2);
minStack.push(0);
minStack.getMin(); // return 0
minStack.pop();
minStack.top();    // return 2
minStack.getMin(); // return 1
```

Constraints:

- `-2^31 <= val <= 2^31 - 1.`
- `pop`, `top` and `getMin` will always be called on non-empty stacks.
- At most 3∗10⁴ calls will be made to `push`, `pop`, `top`, and `getMin`.

### 12. Evaluate Reverse Polish Notation

You are given an array of strings `tokens` that represents a valid arithmetic expression in Reverse Polish Notation.

Return the integer that represents the evaluation of the expression.

The operands may be integers or the results of other operations.
The operators include `'+'`, `'-'`, `'*'`, and `'/'`.
Assume that division between integers always truncates toward zero.

Example 1:

```
Input: tokens = ["1","2","+","3","*","4","-"]

Output: 5
```

Explanation: ((1 + 2) * 3) - 4 = 5

Constraints:

- `1 <= tokens.length <= 10000.`
- `tokens[i]` is `"+"`, `"-"`, `"*"`, or `"/"`, or a string representing an integer in the range `[-200, 200]`.


### 13. Daily Temperatures

You are given an array of integers `temperatures` where `temperatures[i]` represents the daily temperatures on the `ith` day.

Return an array `result` where `result[i]` is the number of days after the `ith` day before a warmer temperature appears on a future day. If there is no day in the future where a warmer temperature will appear for the `ith` day, set `result[i]` to `0` instead.

Example 1:

```
Input: temperatures = [30,38,30,36,35,40,28]

Output: [1,4,1,2,1,0,0]
```

Example 2:

```
Input: temperatures = [22,21,20]

Output: [0,0,0]
```

Constraints:

- `1 <= temperatures.length <= 100,000`.
- `1 <= temperatures[i] <= 100`

### 14. Car Fleet

There are `n` cars traveling to the same destination on a one-lane highway.

You are given two arrays of integers `position` and `speed`, both of length `n`.

- `position[i]` is the position of the `ith` car (in miles)
- `speed[i]` is the speed of the `ith` car (in miles per hour)

The destination is at position `target` miles.

A car can not pass another car ahead of it. It can only catch up to another car and then drive at the same speed as the car ahead of it.

A car fleet is a non-empty set of cars driving at the same position and same speed. A single car is also considered a car fleet.

If a car catches up to a car fleet the moment the fleet reaches the destination, then the car is considered to be part of the fleet.

Return the number of different car fleets that will arrive at the destination.

Example 1:

```
Input: target = 10, position = [1,4], speed = [3,2]

Output: 1
```

Explanation: The cars starting at 1 (speed 3) and 4 (speed 2) become a fleet, meeting each other at 10, the destination.

Example 2:

```
Input: target = 10, position = [4,1,0,7], speed = [2,2,1,1]

Output: 3
```

Explanation: The cars starting at 4 and 7 become a fleet at position 10. The cars starting at 1 and 0 never catch up to the car ahead of them. Thus, there are 3 car fleets that will arrive at the destination.

Constraints:

- `n == position.length == speed.length.`
- `1 <= n <= 100,000`
- `0 < target <= 1,000,000`
- `1 <= speed[i] <= 1,000,000`
- `0 <= position[i] < target`
All the values of `position` are unique.


### 15. Largest Rectangle In Histogram

You are given an array of integers `heights` where `heights[i]` represents the height of a bar. The width of each bar is `1`.

Return the area of the largest rectangle that can be formed among the bars.

Note: This chart is known as a histogram.

Example 1:

```
Input: heights = [7,1,7,2,2,4]

Output: 8
```

Example 2:

```
Input: heights = [1,3,7]

Output: 7
```

Constraints:

- `1 <= heights.length <= 100,000.`
- `0 <= heights[i] <= 10,000`

## Two pointers

### 16. Valid Palindrome

Given a string `s`, return `true` if it is a palindrome, otherwise return `false`.

A palindrome is a string that reads the same forward and backward. It is also case-insensitive and ignores all non-alphanumeric characters.

Note: Alphanumeric characters consist of letters `(A-Z, a-z)` and numbers `(0-9)`.

Example 1:

```
Input: s = "Was it a car or a cat I saw?"

Output: true
```

Explanation: After considering only alphanumerical characters we have "wasitacaroracatisaw", which is a palindrome.

Example 2:

```
Input: s = "tab a cat"

Output: false
```

Explanation: "tabacat" is not a palindrome.

Constraints:

- `1 <= s.length <= 1000`
- `s` is made up of only printable ASCII characters.

### 17. Two Integer Sum II

Given an array of integers `numbers` that is sorted in non-decreasing order.

Return the indices (1-indexed) of two numbers, `[index1, index2]`, such that they add up to a given target number `target` and `index1 < index2`. Note that `index1` and `index2` cannot be equal, therefore you may not use the same element twice.

There will always be exactly one valid solution.

Your solution must use O(1) additional space.

Example 1:

```
Input: numbers = [1,2,3,4], target = 3

Output: [1,2]
```
Explanation:

The sum of 1 and 2 is 3. Since we are assuming a 1-indexed array, `index1` = 1, `index2` = 2. We return `[1, 2]`.

Constraints:

- `2 <= numbers.length <= 30000`
- `-1000 <= numbers[i] <= 1000`
- `-1000 <= target <= 1000`

### 18. 3Sum

Given an integer array `nums`, return all the triplets `[nums[i], nums[j], nums[k]]` where `nums[i] + nums[j] + nums[k] == 0`, and the indices `i`, `j` and `k` are all distinct.

The output should not contain any duplicate triplets. You may return the output and the triplets in any order.

Example 1:

```
Input: nums = [-1,0,1,2,-1,-4]

Output: [[-1,-1,2],[-1,0,1]]
```

Explanation:

`nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.`
`nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.`
`nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.`
The distinct triplets are `[-1,0,1]` and `[-1,-1,2]`.

Example 2:

```
Input: nums = [0,1,1]

Output: []
```

Explanation: The only possible triplet does not sum up to 0.

Example 3:

```
Input: nums = [0,0,0]

Output: [[0,0,0]]
```

Explanation: The only possible triplet sums up to 0.

Constraints:

- `3 <= nums.length <= 3000`
- `-10^5 <= nums[i] <= 10^5`

### 19. Container With Most Water

You are given an integer array `heights` where `heights[i]` represents the height of the `ith` bar.

You may choose any two bars to form a container. Return the maximum amount of water a container can store.


Example 1:

```
Input: height = [1,7,2,5,4,7,3,6]

Output: 36
```

Explanation: The bars at indices `1` and `7` have heights `7` and `6`. The container has width `7 - 1 = 6` and height `min(7, 6) = 6`, so it can store `6 * 6 = 36` units of water. This is the maximum possible area.

Example 2:

```
Input: height = [2,2,2]

Output: 4
```

Constraints:

`2 <= height.length <= 100,000`
`0 <= height[i] <= 10,000`

### 20. Trapping Rain Water

You are given an array of non-negative integers `height` which represent an elevation map. Each value `height[i]` represents the height of a bar, which has a width of `1`.

Return the total amount of water that can be trapped between the bars.


Example 1:

```
Input: height = [0,2,0,3,1,0,1,3,2,1]

Output: 9
```

Constraints:

- `1 <= height.length <= 20,000`
- `0 <= height[i] <= 100,000`

## Sliding window

### 21. Best Time to Buy and Sell Stock

You are given an integer array `prices` where `prices[i]` is the price of NeetCoin on the `ith` day.

You may choose a single day to buy one NeetCoin and choose a different day in the future to sell it.

Return the maximum profit you can achieve. You may choose to not make any transactions, in which case the profit would be `0`.

Example 1:

```
Input: prices = [10,1,5,6,7,1]

Output: 6
```

Explanation: Buy `prices[1]` and sell `prices[4]`, `profit = 7 - 1 = 6`.

Example 2:

```
Input: prices = [10,8,7,5,2]

Output: 0
```

Explanation: No profitable transactions can be made, thus the max profit is 0.

Constraints:

- `1 <= prices.length <= 100`
- `0 <= prices[i] <= 100`

### 22. Longest Substring Without Repeating Characters

Given a string `s`, find the length of the longest substring without duplicate characters.

A substring is a contiguous sequence of characters within a string.


Example 1:

```
Input: s = "zxyzxyz"

Output: 3
```

Explanation: The string "xyz" is the longest without duplicate characters.

Example 2:

```
Input: s = "xxxx"

Output: 1
```

Constraints:

- `0 <= s.length <= 50,000`
- `s` may consist of printable ASCII characters.

### 23. Longest Repeating Character Replacement

You are given a string `s` consisting of only uppercase english characters and an integer `k`. You can choose up to `k` characters of the string and replace them with any other uppercase English character.

After performing at most `k` replacements, return the length of the longest substring which contains only one distinct character.

Example 1:

```
Input: s = "XYYX", k = 2

Output: 4
```

Explanation: Either replace the 'X's with 'Y's, or replace the 'Y's with 'X's.

Example 2:

```
Input: s = "AAABABB", k = 1

Output: 5
```

Constraints:

- `1 <= s.length <= 100,000`
- `0 <= k <= s.length`
- `s consists of only uppercase english characters.`

### 24. Permutation in String

You are given two strings `s1` and `s2`.

Return `true` if `s2` contains a permutation of `s1`, or `false` otherwise. That means if a permutation of `s1` exists as a substring of `s2`, then return `true`.

Both strings only contain lowercase letters.

Example 1:

```
Input: s1 = "abc", s2 = "lecabee"

Output: true
```

Explanation: The substring `"cab"` is a permutation of `"abc"` and is present in `"lecabee"`.

Example 2:

```
Input: s1 = "abc", s2 = "lecaabee"

Output: false
```

Constraints:

- `1 <= s1.length, s2.length <= 10000`

### 25. Minimum Window Substring

Given two strings `s` and `t`, return the shortest substring of `s` such that every character in `t`, including duplicates, is present in the substring. If such a substring does not exist, return an empty string `""`.

You may assume that the correct output is always unique.

Example 1:

```
Input: s = "OUZODYXAZV", t = "XYZ"

Output: "YXAZ"
```

Explanation: `"YXAZ"` is the shortest substring that includes `"X"`, `"Y"`, and `"Z"` from string `t`.

Example 2:

```
Input: s = "xyz", t = "xyz"

Output: "xyz"
```

Example 3:

```
Input: s = "x", t = "xy"

Output: ""
```

Constraints:

- `1 <= s.length <= 100,000`
- `1 <= t.length <= 100,000`
- `s` and `t` consist of uppercase and lowercase English letters.

### 26. Sliding Window Maximum

You are given an array of integers `nums` and an integer `k`. There is a sliding window of size `k` that starts at the left edge of the array. The window slides one position to the right until it reaches the right edge of the array.

Return a list that contains the maximum element in the window at each step.

Example 1:

```
Input: nums = [1,2,1,0,4,2,6], k = 3

Output: [2,2,4,4,6]


Explanation:
Window position            Max
---------------           -----
[1  2  1] 0  4  2  6        2
 1 [2  1  0] 4  2  6        2
 1  2 [1  0  4] 2  6        4
 1  2  1 [0  4  2] 6        4
 1  2  1  0 [4  2  6]       6
```

Constraints:

- `1 <= nums.length <= 100,000`
- `-10,000 <= nums[i] <= 10,000`
- `1 <= k <= nums.length`

## Binary Search

### 27. Binary Search

You are given an array of distinct integers `nums`, sorted in ascending order, and an integer `target`.

Implement a function to search for `target` within `nums`. If it exists, then return its index, otherwise, return `-1`.

Your solution must run in O(log n) time.

Example 1:

```
Input: nums = [-1,0,2,4,6,8], target = 4

Output: 3
```

Example 2:

```
Input: nums = [-1,0,2,4,6,8], target = 3

Output: -1
```

Constraints:

- `1 <= nums.length <= 10000.`
- `-10000 < nums[i], target < 10000`
- All the integers in `nums` are unique.

### 28. Search a 2D Matrix

You are given an `m x n` 2-D integer array `matrix` and an integer `target`.

- Each row in `matrix` is sorted in non-decreasing order.
- The first integer of every row is greater than the last integer of the previous row.

Return `true` if `target` exists within matrix or `false` otherwise.

Can you write a solution that runs in `O(log(m * n))` time?

Example 1:

```
Input: matrix = [[1,2,4,8],[10,11,12,13],[14,20,30,40]], target = 10

Output: true
```

Example 2:

```
Input: matrix = [[1,2,4,8],[10,11,12,13],[14,20,30,40]], target = 15

Output: false
```

Constraints:

- `m == matrix.length`
- `n == matrix[i].length`
- `1 <= m, n <= 100`
- `-10000 <= matrix[i][j], target <= 10000`

### 29. Koko Eating Bananas

You are given an integer array `piles` where `piles[i]` is the number of bananas in the `ith` pile. You are also given an integer `h`, which represents the number of hours you have to eat all the bananas.

You may decide your bananas-per-hour eating rate of `k`. Each hour, you may choose a pile of bananas and eats `k` bananas from that pile. If the pile has less than `k` bananas, you may finish eating the pile but you can not eat from another pile in the same hour.

Return the minimum integer `k` such that you can eat all the bananas within `h` hours.

Example 1:

```
Input: piles = [1,4,3,2], h = 9

Output: 2
```

Explanation: With an eating rate of 2, you can eat the bananas in 6 hours. With an eating rate of 1, you would need 10 hours to eat all the bananas (which exceeds h=9), thus the minimum eating rate is 2.

Example 2:

```
Input: piles = [25,10,23,4], h = 4

Output: 25
```

Constraints:

- `1 <= piles.length <= 10,000`
- `piles.length <= h <= 1,000,000,000`
- `1 <= piles[i] <= 1,000,000,000`
