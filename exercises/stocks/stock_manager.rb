=begin
Given an array of stock prices where each element in the array is an integer representing the price in dollars, and
the index of each element represents the time in minutes past 8am:

Write a method that will calculate the best time to buy, and then sell the stock in order to make the most profit.

Constraints: Stock must be bought before selling. Stock cannot be bought and sold in the same minute(index).
=end

class StockManager
  def find_best_profit(prices)
    return negative_profit(prices) if lowest_price_is_last?(prices)
    profit(prices)
  end

  def negative_profit(prices)
    range = prices[0..-2]
    prices.min - range.min
  end

  def profit(prices)
    range = prices[prices.index(prices.min)..-1]
    range.max - prices.min
  end

  def lowest_price_is_last?(prices)
    prices[-1] == prices.min && prices.count { |p| p == prices.min } < 2
  end
end
