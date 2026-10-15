package arrays_and_hashing

// Time complexity: O(n) | Space complexity: O(n)
products_of_array_except_self :: proc(nums: []int, allocator := context.allocator) -> []int {
	size, prefix := len(nums), 1
	product := make([]int, size, allocator)

	for &num, i in product {
		num = prefix
		prefix *= nums[i]
	}

	prefix = 1

	#reverse for &num, j in product {
		num *= prefix
		prefix *= nums[j]
	}

	return product
}
