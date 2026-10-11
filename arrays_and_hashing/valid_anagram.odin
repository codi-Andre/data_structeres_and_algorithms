package arrays_and_hashing

// Time complexity: O(n) | Space complexity: O(1)
valid_anagram :: proc(s, t: string) -> bool {
	hash, size := make([]int, 26), len(s)
	defer delete(hash)

	if size != len(t) do return false

	for i in 0 ..< size {
		hash[s[i] - 'a'] += 1
		hash[t[i] - 'a'] -= 1
	}

	for num in hash {
		if num != 0 do return false
	}

	return true
}
