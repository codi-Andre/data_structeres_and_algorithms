package binary_search

// Time complexity: O(log n) | Space complexity: O(1)
binary_search :: proc(nums: []int, target: int) -> int {
	l, r := 0, len(nums) - 1

	for l <= r {
		m := (r + l) / 2
		if nums[m] == target {
			return m
		} else if nums[m] > target {
			r = m - 1
		} else {
			l = m + 1
		}
	}

	return -1
}
