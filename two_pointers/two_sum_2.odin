package two_pointers

// Time complexity: O(n) | Space complexity: O(1)
two_sum_2 :: proc(numbers: []int, target: int) -> [2]int {
	l, r := 0, len(numbers) - 1

	for l < r {
		sum := numbers[l] + numbers[r]

		if sum > target {
			r -= 1
		} else if sum < target {
			l += 1
		} else {
			return [2]int{l + 1, r + 1}
		}
	}

	return [2]int{-1, -1}
}
