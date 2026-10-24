package test_sliding_window

import "../../sliding_window"
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
