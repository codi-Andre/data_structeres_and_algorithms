package two_pointers

// Time complexity: O(n) | Space complexity: O(1)
container_with_most_water :: proc(heights: []int) -> (max_volume: int) {
	for l, r := 0, len(heights) - 1; l < r; {
		max_volume = max(((r - l) * min(heights[l], heights[r])), max_volume)

		if (heights[l] < heights[r]) {
			l += 1
		} else {
			r -= 1
		}
	}

	return
}
