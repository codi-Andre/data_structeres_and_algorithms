package arrays_and_hashing

import "core:fmt"
import "core:strconv"

encode_and_decode_strings :: proc {
	encode_strings,
	decode_strings,
}

encode_strings :: proc(strs: []string) -> (encoded: string) {
	for str in strs {
		encoded = fmt.tprintf("%v%v#%v", encoded, len(str), str)
	}
	return
}

decode_strings :: proc(str: string, allocator := context.allocator) -> [dynamic]string {
	decoded := make([dynamic]string, allocator)
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
