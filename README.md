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
