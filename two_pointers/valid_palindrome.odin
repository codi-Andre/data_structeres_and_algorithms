package two_pointers

import "core:strings"

// Time complexity: O(n) | Space complexity: O(n)
valid_palindrome :: proc(s: string) -> bool {
	phrase := strings.to_lower(s)
	defer delete(phrase)
	for l, r := 0, len(phrase) - 1; l < r; {
		for l < r && strings.is_separator(rune(phrase[l])) do l += 1
		for l < r && strings.is_separator(rune(phrase[r])) do r -= 1

		if phrase[l] != phrase[r] do return false
		l += 1
		r -= 1
	}
	return true
}
