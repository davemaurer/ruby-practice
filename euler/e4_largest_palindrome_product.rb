# A palindromic number reads the same both ways.The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
require 'benchmark'
require 'byebug'
# def find_dromes
#   max = 999
#   min = 100
#   dromes = []
#   (min..max).each do |num|
#     dromes << num if  num.to_s == num.to_s.reverse
#   end
#   puts dromes.last
# end
#
# find_dromes

def find_highest_drome_mapping
  low  = 100
  high = 999
  dromes = high.downto(low).map do |num_one|
    num_one.downto(low).map do |num_two|
      num_one * num_two if (num_one * num_two).to_s == (num_one * num_two).to_s.reverse
    end
  end
  dromes.flatten.compact.max
end

puts find_highest_drome_mapping

def find_highest_drome
  low  = 100
  high = 999
  high_drome = 0
  high.downto(low) do |num_one|
    num_one.downto(low) do |num_two|
      new = num_one * num_two
      high_drome = new if new.to_s == new.to_s.reverse && new > high_drome
    end
  end
  high_drome
end

puts find_highest_drome

Benchmark.bm do |test|
  test.report("no mapping:") { 100.times { find_highest_drome } }
  test.report("with mapping:") { 100.times { find_highest_drome_mapping } }
end
