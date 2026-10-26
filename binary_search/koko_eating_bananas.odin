package binary_search

import "core:slice"

// Time complexity: O(n * log m) | Space complexity: O(1)
koko_eating_bananas :: proc(piles: []int, k: int) -> (speed: int) {
	l, r := 1, slice.max(piles)

	for l <= r {
		m := (l + r) / 2
		time_spent := calc_time_spent(piles, m)

		if time_spent <= k {
			speed = time_spent
			r = m - 1
		} else {
			l = m + 1
		}
	}

	return l
}

@(private)
calc_time_spent :: proc(piles: []int, speed: int) -> (time_spent: int) {
	for pile in piles {
		time_spent += (pile + speed - 1) / speed
	}
	return
}
