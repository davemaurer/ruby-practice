require './bubble_sort'

describe BubbleSort do
  it "sorts two values" do
    bs = BubbleSort.new
    result = bs.sort([2, 1])
    expect(result).to eq([1, 2])
  end

  it "sorts two values that are already in order" do
    bs = BubbleSort.new
    result = bs.sort([1, 2])
    expect(result).to eq([1, 2])
  end

  it "sorts more than two values" do
    bs = BubbleSort.new
    result = bs.sort([1, 3, 5, 2, 4])
    expect(result).to eq([1, 2, 3, 4, 5])
  end
end
