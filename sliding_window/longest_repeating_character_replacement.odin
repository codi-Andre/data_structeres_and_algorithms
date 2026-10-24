package sliding_window

longest_repeating_character_replacement :: proc(s: string, k: int) -> int {
	set, l, r, most_freq := make(map[u8]int), 0, 0, 0
	defer delete(set)

	for r < len(s) {
		set[s[r]] += 1
		if most_freq < set[s[r]] do most_freq = set[s[r]]

		if r - l + 1 - most_freq > k {
			set[s[l]] -= 1
			l += 1
		}

		r += 1
	}

	if most_freq + k <= len(s) do return most_freq + k
	return r - l
}
