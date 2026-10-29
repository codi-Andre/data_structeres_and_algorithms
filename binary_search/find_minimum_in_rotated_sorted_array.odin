package binary_search

// Time complexity: O(log n) | Space complexity: O(1)
find_minimum_in_rotated_sorted_array :: proc(nums: []int) -> int {
	l, r := 0, len(nums) - 1

	for l < r {
		m := (l + r) / 2
		if nums[m] < nums[r] {
			r = m
		} else {
			l = m + 1
		}
	}

	return nums[l]
}
