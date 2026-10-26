package binary_search

// Time complexity: O(log(m * n)) | Space complexity: O(1)
search_a_2d_matrix :: proc(nums: [][]int, target: int) -> bool {
	cols, rows := len(nums[0]), len(nums)
	l, r := 0, cols * rows - 1

	for l <= r {
		m := (l + r) / 2
		num := nums[m / cols][m % cols]

		if target < num {
			r = m - 1
		} else if target > num {
			l = m + 1
		} else {
			return true
		}
	}

	return false
}
