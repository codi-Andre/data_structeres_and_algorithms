package two_pointers

// Time complexity: O(n²) | Space complexity: O(n)
import "core:slice"
three_sum :: proc(
	nums: []int,
	allocator := context.allocator,
	loc := #caller_location,
) -> [dynamic][3]int {
	triplets := make([dynamic][3]int, allocator, loc)
	nums := nums
	slice.sort(nums)

	for i, j, k := 0, 0 + 1, len(nums) - 1; i < k; i += 1 {
		if nums[i] > 0 do break
		for i > 0 && nums[i] == nums[i - 1] do i += 1

		j = i + 1
		k = len(nums) - 1

		for j < k {
			sum := nums[i] + nums[j] + nums[k]

			if sum > 0 {
				k -= 1
			} else if sum < 0 {
				j += 1
			} else {
				append(&triplets, [3]int{nums[i], nums[j], nums[k]})
				j += 1
				k -= 1
				for j < k && nums[j] == nums[j - 1] do j += 1
			}
		}
	}

	return triplets
}
