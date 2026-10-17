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
