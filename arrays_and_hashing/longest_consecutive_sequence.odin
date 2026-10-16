package arrays_and_hashing

import "core:fmt"

// Time complexity: O(n) | Space complexity: O(n)
longest_consecutive_sequence :: proc(nums: []int) -> (longest_sequence: int) {
	set := make(map[int]int)
	defer delete(set)

	for num in nums {
		if num in set do continue

		set[num] = set[num - 1] + set[num + 1] + 1
		set[num - set[num - 1]] = set[num]
		set[num + set[num + 1]] = set[num]

		if longest_sequence < set[num] do longest_sequence = set[num]
	}
	return
}
