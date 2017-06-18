require './insertion_sort'

describe InsertionSort do
  it "sorts two elements" do
    is = InsertionSort.new
    result = is.sort([2,1])
    expect(result).to eq([1,2])
  end
end
