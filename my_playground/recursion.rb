def sum_arr(arr)
  return 0 if arr.empty?
  p arr
  sum = arr[0] + sum_arr(arr[1..(arr.length - 1)])
  puts arr[0]
  puts sum
  p arr
  sum
end

puts sum_arr([1, 2, 3, 4, 5])
