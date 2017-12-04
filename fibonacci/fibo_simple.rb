def fibo(n)
  return 0 if n == 0
  prev = 0
  curr = 1
  n.times do
    prev, curr = curr, prev + curr
    # temp = curr
    # curr += prev
    # prev = temp
  end
  curr
end

p fibo(0)
p fibo(1)
p fibo(2)
p fibo(3)
p fibo(4)
p fibo(5)
