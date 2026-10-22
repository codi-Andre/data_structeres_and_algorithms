package test_two_pointers

import "../../two_pointers"
import "core:log"
import "core:slice"
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

@(test)
check_three_sum :: proc(t: ^testing.T) {
	expected_output1 := [][3]int{{-1, -1, 2}, {-1, 0, 1}}
	expected_output2 := [][3]int{{}}
	expected_output3 := [][3]int{{0, 0, 0}}
	expected_output4 := [][3]int{{-2, 0, 2}}

	output1 := two_pointers.three_sum([]int{-1, 0, 1, 2, -1, -4})
	output2 := two_pointers.three_sum([]int{0, 1, 1})
	output3 := two_pointers.three_sum([]int{0, 0, 0})
	output4 := two_pointers.three_sum([]int{-2, 0, 0, 2, 2})

	defer delete(output1)
	defer delete(output2)
	defer delete(output3)
	defer delete(output4)

	log.warn(output2[:], expected_output2)

	compare_triplets :: proc(triplets1, triplets2: [][3]int) -> bool {
		if len(triplets1) != len(triplets2) do return false

		for i in 0 ..< len(triplets1) {
			if !slice.equal(triplets1[i][:], triplets2[i][:]) {
				return false
			}
		}
		return true
	}

	testing.expect_value(t, compare_triplets(expected_output1, output1[:]), true)
	testing.expect_value(t, compare_triplets(expected_output2, output2[:]), true)
	testing.expect_value(t, compare_triplets(expected_output3, output3[:]), true)
	testing.expect_value(t, compare_triplets(expected_output4, output4[:]), true)
}

@(test)
calc_container_with_most_water :: proc(t: ^testing.T) {
	testing.expect_value(
		t,
		two_pointers.container_with_most_water([]int{1, 7, 2, 5, 4, 7, 3, 6}),
		36,
	)
	testing.expect_value(t, two_pointers.container_with_most_water([]int{2, 2, 2}), 4)
}

@(test)
calc_trapping_rain_water :: proc(t: ^testing.T) {
	testing.expect_value(
		t,
		two_pointers.trapping_rain_water([]int{0, 2, 0, 3, 1, 0, 1, 3, 2, 1}),
		9,
	)
	testing.expect_value(
		t,
		two_pointers.trapping_rain_water([]int{0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1}),
		6,
	)
}
