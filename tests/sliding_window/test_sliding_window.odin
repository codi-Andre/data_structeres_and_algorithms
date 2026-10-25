package test_sliding_window

import "../../sliding_window"
import "core:log"
import "core:slice"
import "core:testing"

@(test)
check_best_time_to_buy_and_sell_stock :: proc(t: ^testing.T) {
	testing.expect_value(
		t,
		sliding_window.best_time_to_buy_and_sell_stock([]int{10, 1, 5, 6, 7, 1}),
		6,
	)
	testing.expect_value(
		t,
		sliding_window.best_time_to_buy_and_sell_stock([]int{10, 8, 7, 5, 2}),
		0,
	)
}

@(test)
find_longest_substring_without_repeating_characters :: proc(t: ^testing.T) {
	testing.expect_value(
		t,
		sliding_window.longest_substring_without_repeating_characters("zxyzxyz"),
		3,
	)
	testing.expect_value(
		t,
		sliding_window.longest_substring_without_repeating_characters("xxxx"),
		1,
	)
	testing.expect_value(t, sliding_window.longest_substring_without_repeating_characters(" "), 1)
}

@(test)
find_longest_repeating_character_replacement :: proc(t: ^testing.T) {
	testing.expect_value(t, sliding_window.longest_repeating_character_replacement("XYYX", 2), 4)
	testing.expect_value(
		t,
		sliding_window.longest_repeating_character_replacement("AAABABB", 1),
		5,
	)
	testing.expect_value(t, sliding_window.longest_repeating_character_replacement("AAAA", 2), 4)
	testing.expect_value(t, sliding_window.longest_repeating_character_replacement("AABA", 0), 2)
}

@(test)
check_permutation_in_string :: proc(t: ^testing.T) {
	testing.expect_value(t, sliding_window.permutation_in_string("ab", "lecabee"), true)
	testing.expect_value(t, sliding_window.permutation_in_string("abc", "lecaabee"), false)
	testing.expect_value(t, sliding_window.permutation_in_string("ab", "eidboaoo"), false)
}

@(test)
find_minimum_window_substring :: proc(t: ^testing.T) {
	testing.expect_value(t, sliding_window.minimum_window_substring("OUZODYXAZV", "XYZ"), "YXAZ")
	testing.expect_value(t, sliding_window.minimum_window_substring("xyz", "xyz"), "xyz")
	testing.expect_value(t, sliding_window.minimum_window_substring("x", "xy"), "")
}

@(test)
find_sliding_window_maximum :: proc(t: ^testing.T) {
	expected_output := []int{2, 2, 4, 4, 6}
	output := sliding_window.sliding_window_maximum([]int{1, 2, 1, 0, 4, 2, 6}, 3)
	defer delete(output)

	testing.expect_value(t, slice.equal(expected_output, output[:]), true)
}
