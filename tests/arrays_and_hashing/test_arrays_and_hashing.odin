package test_arrays_and_hashing

import "../../arrays_and_hashing"
import "core:testing"

@(test)
find_duplicates_in_slices :: proc(t: ^testing.T) {
	testing.expect_value(t, arrays_and_hashing.contains_duplicate({1, 2, 3}), false)
	testing.expect_value(t, arrays_and_hashing.contains_duplicate({1, 2, 2}), true)
}
