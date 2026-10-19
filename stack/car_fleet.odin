package stack

import "core:slice"

// Time complexity: O(n log n) | Space complexity: O(n)
car_fleet :: proc(target: int, position, speed: []int) -> int {
	stack, cars, position := make([dynamic]f64), make([dynamic]int, len(position)), position[:]
	defer delete(stack)
	defer delete(cars)

	for &car, idx in cars {
		car = idx
	}

	slice.sort_by_with_data(cars[:], sort_by_current_distance, &position)
	for car in cars {
		time_to_target := f64(target - position[car]) / f64(speed[car])

		if len(stack) == 0 || time_to_target > stack[len(stack) - 1] do append(&stack, time_to_target)
	}

	return len(stack)
}

@(private)
sort_by_current_distance :: proc(i, j: int, user_data: rawptr) -> bool {
	position := (^[]int)(user_data)^
	return position[i] > position[j]
}
