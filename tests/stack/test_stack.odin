package test_stack

import "../../stack"
import "core:testing"

@(test)
is_valid_parenthesis :: proc(t: ^testing.T) {
	testing.expect_value(t, stack.valid_parenthesis("([{}])"), true)
	testing.expect_value(t, stack.valid_parenthesis("[(])"), false)
}

@(test)
min_stack :: proc(t: ^testing.T) {
	s := stack.Min_Stack{}
	stack.init(&s)
	defer stack.destroy(&s)

	stack.push(&s, 1)
	stack.push(&s, 2)
	stack.push(&s, 0)

	testing.expect_value(t, stack.get_min(&s), 0)

	stack.stack_pop(&s)

	testing.expect_value(t, stack.top(&s), 2)
	testing.expect_value(t, stack.get_min(&s), 1)
}

@(test)
reverse_polish_notation :: proc(t: ^testing.T) {
	testing.expect_value(
		t,
		stack.evaluate_reverse_polish_notation([]string{"1", "2", "+", "3", "*", "4", "-"}),
		5,
	)
	testing.expect_value(
		t,
		stack.evaluate_reverse_polish_notation([]string{"4", "13", "5", "/", "+"}),
		6,
	)
}
