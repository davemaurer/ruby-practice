def find_best_profit(prices)
  fail ArgumentError, "Must have at least two prices" if prices.length < 2
  min    = prices.shift
  profit = prices[1] - min

  prices.each_with_index do |p, i|
    new_profit = p - min
    profit = new_profit if new_profit > profit
    min = p if p < min
  end
  profit
end
