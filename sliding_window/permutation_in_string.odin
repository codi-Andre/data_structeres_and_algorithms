package sliding_window

// Time complexity: O(n) | Space complexity: O(1)
permutation_in_string :: proc(s1, s2: string) -> bool {
	if len(s1) > len(s2) do return false

	s1_count := [26]int{}
	s2_count := [26]int{}

	for i in 0 ..< len(s1) {
		s1_count[s1[i] - 'a'] += 1
		s2_count[s2[i] - 'a'] += 1
	}

	matches := 0
	for val, i in s1_count {
		if s2_count[i] == val do matches += 1
	}

	i: u8
	for l, r := 0, len(s1); r < len(s2); r += 1 {
		if matches == 26 do return true

		i = s2[r] - 'a'
		s2_count[i] += 1
		if s1_count[i] == s2_count[i] {
			matches += 1
		} else if s1_count[i] + 1 == s2_count[i] {
			matches -= 1
		}

		i = s2[l] - 'a'
		s2_count[i] -= 1
		if s1_count[i] == s2_count[i] {
			matches += 1
		} else if s1_count[i] - 1 == s2_count[i] {
			matches -= 1
		}
		l += 1
	}

	return false
}
