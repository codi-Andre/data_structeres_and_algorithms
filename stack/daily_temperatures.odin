package stack

// Time complexity: O(n) | Space complexity: O(n)
daily_temperatures :: proc(temperatures: []int, allocator := context.allocator) -> [dynamic]int {
	stack, result := make([dynamic]int), make([dynamic]int, len(temperatures), allocator)
	defer delete(stack)

	for curr_temp, day in temperatures {
		for len(stack) > 0 && temperatures[stack[len(stack) - 1]] < curr_temp {
			day_before := pop(&stack)
			result[day_before] = day - day_before
		}
		append(&stack, day)
	}

	return result
}
