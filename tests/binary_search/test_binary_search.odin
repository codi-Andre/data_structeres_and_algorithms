package test_binary_search

import "../../binary_search"
import "core:testing"

@(test)
check_binary_search :: proc(t: ^testing.T) {
	testing.expect_value(t, binary_search.binary_search([]int{-1, 0, 2, 4, 6, 8}, 4), 3)
	testing.expect_value(t, binary_search.binary_search([]int{-1, 0, 2, 4, 6, 8}, 3), -1)
}

@(test)
check_search_a_2d_matrix :: proc(t: ^testing.T) {
	testing.expect_value(
		t,
		binary_search.search_a_2d_matrix(
			[][]int{{1, 3, 5, 7}, {10, 11, 16, 20}, {23, 30, 34, 60}},
			3,
		),
		true,
	)
	testing.expect_value(
		t,
		binary_search.search_a_2d_matrix(
			[][]int{{1, 3, 5, 7}, {10, 11, 16, 20}, {23, 30, 34, 60}},
			13,
		),
		false,
	)
	testing.expect_value(t, binary_search.search_a_2d_matrix([][]int{{1}}, 1), true)
}

@(test)
check_koko_eating_bananas :: proc(t: ^testing.T) {
	testing.expect_value(t, binary_search.koko_eating_bananas([]int{1, 4, 3, 2}, 9), 2)
	testing.expect_value(t, binary_search.koko_eating_bananas([]int{25, 10, 23, 4}, 4), 25)
}
