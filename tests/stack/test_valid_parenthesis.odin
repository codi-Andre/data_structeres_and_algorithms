package test_stack

import "../../stack"
import "core:testing"

@(test)
is_valid_parenthesis :: proc(t: ^testing.T) {
	testing.expect_value(t, stack.valid_parenthesis("([{}])"), true)
	testing.expect_value(t, stack.valid_parenthesis("[(])"), false)
}
