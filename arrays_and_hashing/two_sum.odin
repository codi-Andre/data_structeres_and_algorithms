package arrays_and_hashing

// Time complexity: O(n) | Space complexity: O(n)
two_sum :: proc(nums: []int, target: int) -> [2]int {
	set := make(map[int]int)
	defer delete(set)

	for num, i in nums {
		diff := target - num

		if diff in set {
			return [2]int{set[diff], i}
		}
		set[num] = i
	}
	return [2]int{-1, -1}
}
