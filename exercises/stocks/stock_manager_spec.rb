require_relative 'stock_manager'

describe StockManager do
  let(:sm) { StockManager.new }
  let(:prices) { [12, 4, 6, 9, 6, 8] }

  it "finds the best profit" do
    result = sm.find_best_profit(prices)

    expect(result).to eq 5
  end

  it "finds the best profit even if negative" do
    different_prices = [12, 9, 7, 6, 3]
    result = sm.find_best_profit(different_prices)

    expect(result).to eq(-3)
  end
end
