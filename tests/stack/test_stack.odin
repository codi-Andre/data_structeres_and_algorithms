package test_stack

import "../../stack"
import "core:log"
import "core:slice"
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

@(test)
check_daily_temperatures :: proc(t: ^testing.T) {
	expected_output1 := []int{1, 4, 1, 2, 1, 0, 0}
	expected_output2 := []int{0, 0, 0}
	output1 := stack.daily_temperatures([]int{30, 38, 30, 36, 35, 40, 28})
	output2 := stack.daily_temperatures([]int{22, 21, 20})
	defer delete(output1)
	defer delete(output2)

	testing.expect_value(t, slice.equal(output1[:], expected_output1), true)
	testing.expect_value(t, slice.equal(output2[:], expected_output2), true)
}

@(test)
number_of_car_fleet :: proc(t: ^testing.T) {
	testing.expect_value(t, stack.car_fleet(10, []int{1, 4}, []int{3, 2}), 1)
	testing.expect_value(t, stack.car_fleet(10, []int{4, 1, 0, 7}, []int{2, 2, 1, 1}), 3)
}

@(test)
largest_rectangle :: proc(t: ^testing.T) {
	testing.expect_value(t, stack.largest_rectangle_in_histogram([]int{7, 1, 7, 2, 2, 4}), 8)
	testing.expect_value(t, stack.largest_rectangle_in_histogram([]int{1, 3, 7}), 7)
}
