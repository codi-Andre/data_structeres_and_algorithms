package stack

// Time complexity: O(1) | Space complexity: O(n)
Min_Stack :: struct {
	data: [dynamic]int,
	min:  int,
}

init :: proc(s: ^Min_Stack, allocator := context.allocator) {
	s.data = make([dynamic]int, allocator)
	s.min = max(int)
}

destroy :: proc(s: ^Min_Stack) {
	delete(s.data)
}

push :: proc(s: ^Min_Stack, val: int) {
	if len(s.data) == 0 {
		append(&s.data, 0)
		s.min = val
	} else {
		append(&s.data, val - s.min)
		if s.min > val do s.min = val
	}
}

stack_pop :: proc(s: ^Min_Stack) {
	val := pop(&s.data)
	if val < 0 {
		s.min -= val
	}
}

top :: proc(s: ^Min_Stack) -> int {
	top := s.data[len(s.data) - 1]
	if top > 0 do return top + s.min
	return s.min
}

get_min :: proc(s: ^Min_Stack) -> int {
	return s.min
}
