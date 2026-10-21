package test_two_pointers

import "../../two_pointers"
import "core:testing"

@(test)
is_valid_palindrome :: proc(t: ^testing.T) {
	testing.expect_value(t, two_pointers.valid_palindrome("Was it a car or a cat I saw?"), true)
	testing.expect_value(t, two_pointers.valid_palindrome("tab a cat"), false)
}

@(test)
check_two_sum_2 :: proc(t: ^testing.T) {
	testing.expect_value(t, two_pointers.two_sum_2([]int{1, 2, 3, 4}, 3), [2]int{1, 2})
	testing.expect_value(t, two_pointers.two_sum_2([]int{1, 2, 7, 11, 15}, 9), [2]int{2, 3})
}
