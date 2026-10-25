package sliding_window

// Time complexity: O(n + m) | Space complexity: O(k)
minimum_window_substring :: proc(s, t: string) -> string {
	if len(s) < len(t) do return ""

	s_count, t_count := make(map[u8]int), make(map[u8]int)
	defer delete(s_count)
	defer delete(t_count)

	for i in 0 ..< len(t) {
		t_count[t[i]] += 1
	}

	matches_left, start_index, window := len(t_count), 0, max(int)

	for l, r: int; r < len(s); r += 1 {
		s_count[s[r]] += 1
		if s[r] in t_count && s_count[s[r]] == t_count[s[r]] do matches_left -= 1

		for matches_left == 0 {
			if window > r - l + 1 {
				window = r - l + 1
				start_index = l
			}

			s_count[s[l]] -= 1
			if s[l] in t_count && s_count[s[l]] < t_count[s[l]] do matches_left += 1
			l += 1
		}
	}

	if window != max(int) do return s[start_index:start_index + window]

	return ""
}
