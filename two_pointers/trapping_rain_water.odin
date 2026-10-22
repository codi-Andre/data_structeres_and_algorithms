package two_pointers

// Time complexity: O(n) | Space complexity: O(1)
trapping_rain_water :: proc(height: []int) -> (volume: int) {
	l, r := 0, len(height) - 1
	l_wall, r_wall := height[l], height[r]

	for l < r {
		if l_wall < r_wall {
			l += 1
			if l_wall < height[l] do l_wall = height[l]
			volume += l_wall - height[l]
		} else {
			r -= 1
			if r_wall < height[r] do r_wall = height[r]
			volume += r_wall - height[r]
		}
	}

	return
}
