package sliding_window

// Time complexity: O(n) | Space complexity: O(1)
best_time_to_buy_and_sell_stock :: proc(prices: []int) -> (profit: int) {
	for l, r: int; r < len(prices); r += 1 {
		if prices[l] > prices[r] do l = r
		profit = max(profit, prices[r] - prices[l])
	}

	return
}
