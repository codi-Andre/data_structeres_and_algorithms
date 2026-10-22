package arrays_and_hashing

import "core:fmt"

// Time complexity: O(m * n) | Space complexity: O(m * n)
group_anagrams :: proc(
	strs: []string,
	allocator := context.allocator,
	loc := #caller_location,
) -> [dynamic][dynamic]string {
	anagrams, count := make(map[string][dynamic]string), [26]int{}
	defer delete(anagrams)

	for str in strs {
		for s in str {
			count[s - 'a'] += 1
		}
		hash := fmt.tprint(count)

		if hash not_in anagrams do anagrams[hash] = make([dynamic]string, allocator, loc)

		group := anagrams[hash]
		append(&group, str)
		anagrams[hash] = group
		count = {}
	}

	groups := make([dynamic][dynamic]string, allocator, loc)
	for _, group in anagrams {
		append(&groups, group)
	}

	return groups
}
