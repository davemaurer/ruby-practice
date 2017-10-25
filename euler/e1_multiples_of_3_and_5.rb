# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.
require 'benchmark'

iterations = 100000

Benchmark.bm do |bm|
  bm.report do
    iterations.times do
      (1..1000).to_a.reduce(0) { |sum, num| (num % 3 == 0 || num % 5 == 0) ? sum + num : sum }
    end
  end
  bm.report do
    iterations.times do
      multiples = []
      (1..1000).each { |number| multiples << number if number % 3 == 0 || number % 5 == 0 }
      multiples.reduce(:+)
    end
  end
  bm.report do
    iterations.times do
      total = 0
      (1..1000).each { |num| total += num if num % 3 == 0 || num % 5 == 0 }
      total
    end
  end
end

# Benchmark results
# user system total real
# 22.280000 0.110000 22.390000 (22.987829) - Slick one line way
# 19.070000 0.100000 19.170000 (19.274996) - Using .each
# 13.350000   0.060000  13.410000 ( 13.463234) - Using .each without an array. No reduce needed.

