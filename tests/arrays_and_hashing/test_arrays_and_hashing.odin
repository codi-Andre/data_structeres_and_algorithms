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

@(test)
group_anagrams :: proc(t: ^testing.T) {
	output := arrays_and_hashing.group_anagrams(
		[]string{"act", "pots", "tops", "cat", "stop", "hat"},
	)
	defer for arr in output {
		delete(arr)
	}
	defer delete(output)

	expected_output := [][]string {
		[]string{"hat"},
		[]string{"act", "cat"},
		[]string{"pots", "tops", "stop"},
	}
	wrong_output := [][]string {
		[]string{"door"},
		[]string{"behind", "desk"},
		[]string{"close", "open", "bend"},
	}

	equal_groups :: proc(a: [][dynamic]string, b: [][]string) -> bool {
		total, found := len(a), 0

		if len(a) != len(b) do return false

		for arr in a {
			for arr2 in b {
				if slice.equal(arr[:], arr2) {
					found += 1
					break
				}
			}
		}

		return total == found
	}

	testing.expect(t, equal_groups(output[:], expected_output))
	testing.expect_value(t, equal_groups(output[:], wrong_output), false)
}

@(test)
find_most_frequent_elements :: proc(t: ^testing.T) {
	input := []int{1, 2, 2, 3, 3, 3}
	frequency := 2
	expected_output := []int{2, 3}
	output := arrays_and_hashing.top_K_frequent_elements(input, frequency)
	defer delete(output)

	testing.expect_value(t, slice.contains(output[:], expected_output[0]), true)
	testing.expect_value(t, slice.contains(output[:], expected_output[1]), true)
	testing.expect_value(t, len(output) == frequency, true)
}

@(test)
encode_decode :: proc(t: ^testing.T) {
	input := []string{"Hello", "World"}
	encoded_expected_output := "5#Hello5#World"
	encoded := arrays_and_hashing.encode_and_decode_strings(input)
	decoded := arrays_and_hashing.encode_and_decode_strings(encoded)
	defer delete(decoded)

	testing.expect_value(t, encoded, encoded_expected_output)
	testing.expect_value(t, slice.equal(decoded[:], input), true)
}

@(test)
calc_product :: proc(t: ^testing.T) {
	expected_output := []int{48, 24, 12, 8}
	output := arrays_and_hashing.products_of_array_except_self([]int{1, 2, 4, 6})
	defer delete(output)

	testing.expect_value(t, slice.equal(output, expected_output), true)
}

@(test)
is_valid_sudoku :: proc(t: ^testing.T) {
	output1 := arrays_and_hashing.valid_sudoku(
		[][]rune {
			{'1', '2', '.', '.', '3', '.', '.', '.', '.'},
			{'4', '.', '.', '5', '.', '.', '.', '.', '.'},
			{'.', '9', '8', '.', '.', '.', '.', '.', '3'},
			{'5', '.', '.', '.', '6', '.', '.', '.', '4'},
			{'.', '.', '.', '8', '.', '3', '.', '.', '5'},
			{'7', '.', '.', '.', '2', '.', '.', '.', '6'},
			{'.', '.', '.', '.', '.', '.', '2', '.', '.'},
			{'.', '.', '.', '4', '1', '9', '.', '.', '8'},
			{'.', '.', '.', '.', '8', '.', '.', '7', '9'},
		},
	)
	output2 := arrays_and_hashing.valid_sudoku(
		[][]rune {
			{'1', '2', '.', '.', '3', '.', '.', '.', '.'},
			{'4', '.', '.', '5', '.', '.', '.', '.', '.'},
			{'.', '9', '1', '.', '.', '.', '.', '.', '3'},
			{'5', '.', '.', '.', '6', '.', '.', '.', '4'},
			{'.', '.', '.', '8', '.', '3', '.', '.', '5'},
			{'7', '.', '.', '.', '2', '.', '.', '.', '6'},
			{'.', '.', '.', '.', '.', '.', '2', '.', '.'},
			{'.', '.', '.', '4', '1', '9', '.', '.', '8'},
			{'.', '.', '.', '.', '8', '.', '.', '7', '9'},
		},
	)

	testing.expect_value(t, output1, true)
	testing.expect_value(t, output2, false)
}
