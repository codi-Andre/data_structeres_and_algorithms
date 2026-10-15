package arrays_and_hashing

import "core:fmt"

// Time complexity: O(n²) | Space complexity: O(n²)
valid_sudoku :: proc(board: [][]rune) -> bool {
	set := make(map[string]struct{})
	defer delete(set)

	for i in 0 ..< 9 {
		for j in 0 ..< 9 {
			cell := board[i][j]

			if cell == '.' do continue

			col := fmt.tprint("c%vc%v", cell, j)
			row := fmt.tprint("c%vr%v", cell, i)
			grid := fmt.tprint("c%vg%v", cell, (i / 3) * 3 + (j / 3))

			if col in set || row in set || grid in set do return false

			set[col] = {}
			set[row] = {}
			set[grid] = {}
		}
	}
	return true
}
