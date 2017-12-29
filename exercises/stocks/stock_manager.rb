=begin
Given an array of stock prices where each element in the array is an integer representing the price in dollars, and
the index of each element represents the time in minutes past 8am:

Write a method that will calculate the best time to buy, and then sell the stock in order to make the most profit.

Constraints: Stock must be bought before selling. Stock cannot be bought and sold in the same minute(index).
=end

class StockManager
  def find_best_profit(prices)
    fail ArgumentError, "Must have at least two prices" if prices.length < 2
    min = prices[0]
    profit = prices[1] - min

    prices.each_with_index do |p, i|
      next if i.zero?
      new_profit = p - min
      profit = new_profit if new_profit > profit
      min = p if p < min
    end
    profit
  end

  # def find_best_profit(prices)
  #   fail ArgumentError, "At least two prices are required" if prices.length < 2
  #   return negative_profit(prices) if lowest_price_is_last?(prices)
  #   profit(prices)
  # end

  # def negative_profit(prices)
  #   range = prices[0..-2]
  #   prices.min - range.min
  # end
  #
  # def profit(prices)
  #   range = prices[prices.index(prices.min)..-1]
  #   range.max - prices.min
  # end
  #
  # def lowest_price_is_last?(prices)
  #   prices[-1] == prices.min && prices.count { |p| p == prices.min } < 2
  # end
end
