package stack

// Time complexity: O(n) | Space complexity: O(n)
largest_rectangle_in_histogram :: proc(heights: []int) -> (largest: int) {
	stack := make([dynamic][2]int)
	defer delete(stack)

	for bar: [2]int; height, width in heights {
		bar.x = width
		for len(stack) > 0 && stack[len(stack) - 1].y > height {
			bar = pop(&stack)
			area := bar.y * (width - bar.x)
			if largest < area do largest = area
		}
		append(&stack, [2]int{bar.x, height})
	}

	for len(stack) > 0 {
		bar := pop(&stack)
		area := bar.y * (len(heights) - bar.x)
		if largest < area do largest = area
	}

	return
}
