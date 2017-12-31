require_relative 'product'

describe Product do
  let(:product) { Product.new([4, 3, 1, 2]) }

  it "takes takes in an array of numbers" do
    expect(product.numbers).to eq [4, 3, 1, 2]
  end

  it "can get the product of all elements except current element" do
    expect(product.find_products_excluding_current_element).to eq [6, 8, 24, 12]
  end
end
