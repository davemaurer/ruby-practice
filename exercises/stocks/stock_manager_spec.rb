require_relative 'stock_manager'

describe StockManager do
  it "finds the lowest stock prices" do
    sm = StockManager.new
    prices = [12, 4, 6, 9, 6, 8]
    result = sm.find_buy_points(prices)

    expect(result).to eq [4, 6, 9, 6, 8]
  end

  it "finds the best profit margin" do
    sm = StockManager.new
    prices = [12, 4, 6, 9, 6, 8]
    result = sm.find_best_profit(prices)

    expect(result).to eq 5
  end
end
