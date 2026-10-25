package sliding_window

import "core:container/queue"

// Time complexity: O(n) | Space complexity: O(n)
sliding_window_maximum :: proc(
	nums: []int,
	k: int,
	allocator := context.allocator,
	loc := #caller_location,
) -> [dynamic]int {
	window := make([dynamic]int, len(nums) - k + 1, allocator, loc)
	q: queue.Queue(int)
	queue.init(&q)
	defer queue.destroy(&q)

	for l, r: int; r < len(nums); r += 1 {
		for queue.len(q) > 0 && nums[queue.back(&q)] < nums[r] do queue.pop_back(&q)
		queue.append(&q, r)

		if l > queue.front(&q) do queue.pop_front(&q)

		if r + 1 >= k {
			window[l] = nums[queue.front(&q)]
			l += 1
		}
	}

	return window
}
