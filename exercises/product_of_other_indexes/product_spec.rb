require_relative 'product'

describe Product do
  let(:product) { Product.new([4, 3, 1, 2]) }

  it "takes takes in an array of numbers" do
    expect(product.numbers).to eq [4, 3, 1, 2]
  end
end
