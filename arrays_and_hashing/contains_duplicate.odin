package arrays_and_hashing

// Time complexity: O(n) | Space complexity: O(n)
contains_duplicate :: proc(nums: []int) -> bool {
	set := make(map[int]struct{})
	defer delete(set)

	for num in nums {
		if num in set do return true
		set[num] = {}
	}

	return false
}
