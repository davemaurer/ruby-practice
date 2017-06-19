require './insertion_sort'

describe InsertionSort do
  it "sorts two elements" do
    sorter = InsertionSort.new
    result = sorter.sort([2, 1])
    expect(result).to eq([1, 2])
  end

  it "sorts two elements that are already in order" do
    sorter = InsertionSort.new
    result = sorter.sort([1, 2])
    expect(result).to eq([1, 2])
  end

  it "sorts more than two elements" do
    sorter = InsertionSort.new
    result = sorter.sort([2, 1, 2, 3, 5, 4])
    expect(result).to eq([1, 2, 2, 3, 4, 5])
  end

  it "sorts letters" do
    sorter = InsertionSort.new
    result = sorter.sort(%w(d a c b))
    expect(result).to eq(%w(a b c d))
  end
end
