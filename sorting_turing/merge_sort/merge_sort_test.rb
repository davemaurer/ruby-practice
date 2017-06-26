require './merge_sort'

describe MergeSort do
  it "can sort two elements" do
    sorter = MergeSort.new
    result = sorter.sort([2, 1])
    expect(result).to eq([1, 2])
  end
end
