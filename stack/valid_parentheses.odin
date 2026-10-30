#+feature dynamic-literals

package stack

import "core:container/queue"

// Time complexity: O(n) | Space complexity: O(n)
valid_parenthesis :: proc(s: string) -> bool {
	stack: queue.Queue(rune)
	queue.init(&stack)
	pairs := map[rune]rune {
		')' = '(',
		']' = '[',
		'}' = '{',
	}
	defer {
		queue.destroy(&stack)
		delete(pairs)
	}

	for char in s {
		if char not_in pairs {
			queue.push_back(&stack, char)
			continue
		}

		if queue.len(stack) > 0 && queue.back(&stack) == pairs[char] {
			queue.pop_back(&stack)
		} else {
			return false
		}
	}

	return queue.len(stack) == 0
}
