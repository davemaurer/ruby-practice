require 'pry'

first = 0
last  = 1
total = 0

until total >= 8
  sum = first + last
  first = last
  last = sum
  total += sum
end

puts total
