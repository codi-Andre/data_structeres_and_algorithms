package arrays_and_hashing

// Time complexity: O(n) | Space complexity: O(n)
top_K_frequent_elements :: proc(
	nums: []int,
	k: int,
	allocator := context.allocator,
) -> [dynamic]int {
	top_k := make([dynamic]int, allocator)
	count, buckets := make(map[int]int), make([][dynamic]int, len(nums) + 1)
	defer delete(count)
	defer for bucket in buckets {
		delete(bucket)
	}
	defer delete(buckets)

	for num in nums {
		count[num] += 1
	}

	for num, freq in count {
		append(&buckets[freq], num)
	}

	outer: #reverse for bucket in buckets {
		for num in bucket {
			if len(top_k) == k do break outer

			append(&top_k, num)
		}
	}

	return top_k
}
