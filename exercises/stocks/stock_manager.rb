=begin
Given an array of stock prices where each element in the array is an integer representing the price in dollars, and
the index of each element represents the time in minutes past 8am:

Write a method that will calculate the best time to buy, and then sell the stock in order to make the most profit.

Constraints: Stock must be bought before selling. Stock cannot be bought and sold in the same minute(index).
=end

class StockManager
  def find_buy_points(prices)
    prices[prices.index(prices.min)..-1]
  end

  def find_best_profit(prices)
    min = find_buy_points(prices)[0]
    find_buy_points(prices).max - min
  end
end
