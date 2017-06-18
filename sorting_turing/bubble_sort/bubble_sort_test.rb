require './bubble_sort'

describe BubbleSort do
  it "sorts two values" do
    bs = BubbleSort.new
    result = bs.sort([2,1])
    expect(result).to eq([1,2])
  end
end
