# This challenges makes part of NeetCode150 list by NeetCode.

The objective is to learning data structures and algorithms and their big O efficiency.

To run the tests suit use the command `odin test . --all-packages` in the tests directory.

## 1. Given an integer array `nums`, return `true` if any value appears more than once in the array, otherwise return `false`.

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

`0 <= nums.length <= 10^5`

`-10^9 <= nums[i] <= 10^9`

## 2. Given two strings `s` and `t`, return `true` if the two strings are anagrams of each other, otherwise return `false`.

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

`1 <= s.length, t.length <= 5 * 10^4`

`s and t consist of lowercase English letters.`
