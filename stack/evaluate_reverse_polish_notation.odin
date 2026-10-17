package stack

import "core:strconv"

// Time complexity: O(n) | Space complexity: O(n)
evaluate_reverse_polish_notation :: proc(tokens: []string) -> int {
	stack := make([dynamic]int)
	defer delete(stack)

	for num1, num2: int; token in tokens {
		switch token {
		case "+":
			append(&stack, pop(&stack) + pop(&stack))
		case "-":
			num1 = pop(&stack)
			num2 = pop(&stack)
			append(&stack, num2 - num1)
		case "*":
			append(&stack, pop(&stack) * pop(&stack))
		case "/":
			num1 = pop(&stack)
			num2 = pop(&stack)
			append(&stack, num2 / num1)
		case:
			num, _ := strconv.parse_int(token, 10)
			append(&stack, num)
		}
	}

	return stack[0]
}
