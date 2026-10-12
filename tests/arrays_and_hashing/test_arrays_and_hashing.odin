package test_arrays_and_hashing

import "../../arrays_and_hashing"
import "core:log"
import "core:slice"
import "core:testing"

@(test)
find_duplicates_in_slices :: proc(t: ^testing.T) {
	testing.expect_value(t, arrays_and_hashing.contains_duplicate({1, 2, 3}), false)
	testing.expect_value(t, arrays_and_hashing.contains_duplicate({1, 2, 2}), true)
}

@(test)
find_anagrams :: proc(t: ^testing.T) {
	testing.expect_value(t, arrays_and_hashing.valid_anagram("racecar", "carrace"), true)
	testing.expect_value(t, arrays_and_hashing.valid_anagram("jar", "jam"), false)
	testing.expect_value(t, arrays_and_hashing.valid_anagram("person", "personal"), false)
}

@(test)
find_indexes_with_two_sum :: proc(t: ^testing.T) {
	output := arrays_and_hashing.two_sum([]int{3, 4, 5, 6}, 7)
	expected_output := [2]int{0, 1}
	wrong_output := [2]int{1, 0}

	testing.expect_value(t, output, expected_output)
	testing.expect_value(t, output == wrong_output, false)
}
