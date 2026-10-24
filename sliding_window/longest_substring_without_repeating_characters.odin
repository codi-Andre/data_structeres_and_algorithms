package sliding_window

// Time complexity: O(n) | Space complexity: O(m)
longest_substring_without_repeating_characters :: proc(s: string) -> (longest: int) {
	set := make(map[u8]struct{})
	defer delete(set)

	for l, r := 0, 0; r < len(s); r += 1 {
		if s[r] in set {
			if longest < len(set) do longest = len(set)
			for s[l] != s[r] {
				delete_key(&set, s[l])
				l += 1
			}
			l += 1
			continue
		}
		set[s[r]] = {}
	}

	if len(set) > longest {return len(set)} else {return}
}
