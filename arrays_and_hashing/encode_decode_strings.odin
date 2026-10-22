package arrays_and_hashing

import "core:fmt"
import "core:strconv"

encode_and_decode_strings :: proc {
	encode_strings,
	decode_strings,
}

// Time complexity: O(m + n) | Space complexity: O(m + n)
encode_strings :: proc(strs: []string) -> (encoded: string) {
	for str in strs {
		encoded = fmt.tprintf("%v%v#%v", encoded, len(str), str)
	}
	return
}

// Time complexity: O(m + n) | Space complexity: O(m + n)
decode_strings :: proc(
	str: string,
	allocator := context.allocator,
	loc := #caller_location,
) -> [dynamic]string {
	decoded := make([dynamic]string, allocator, loc)
	l, r := 0, 0

	for l < len(str) {
		r = l
		for str[r] != '#' do r += 1
		length, _ := strconv.parse_int(str[l:r], 10)
		l = r + 1
		append(&decoded, str[l:l + length])
		l += length
	}

	return decoded
}
