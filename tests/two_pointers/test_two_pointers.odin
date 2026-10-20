package test_two_pointers

import "../../two_pointers"
import "core:testing"

@(test)
is_valid_palindrome :: proc(t: ^testing.T) {
	testing.expect_value(t, two_pointers.valid_palindrome("Was it a car or a cat I saw?"), true)
	testing.expect_value(t, two_pointers.valid_palindrome("tab a cat"), false)
}
