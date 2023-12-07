def fibonacci(n)
  return 1 if n < 3
  num1 = 1
  num2 = 1
  sum = 0
  3.upto(n) do
    sum = num1 + num2
    num1, num2 = num2, sum
  end
  sum
  
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501