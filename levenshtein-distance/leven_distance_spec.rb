require_relative 'leven_distance'

describe LevenDistanceFinder do
  it 'can find a distance of one' do
    string_one = "test"
    string_two = "fest"
    finder =LevenDistanceFinder.find_distance(string_one, string_two)

    expect(finder).to eq(1)
  end

  it 'can find a distance of two' do
    string_one = "test"
    string_two = "tusk"
    finder =LevenDistanceFinder.find_distance(string_one, string_two)

    expect(finder).to eq(2)
  end

  it 'can find distance of differing length words' do
    string_one = "test"
    string_two = "testing"
    finder =LevenDistanceFinder.find_distance(string_one, string_two)

    expect(finder).to eq(3)
  end
end
