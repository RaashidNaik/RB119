def fibonacci_last(n)
  fibonacci(n).to_s[-1].to_i
end

def fibonacci(n)
  return 1 if n < 3
  num1 = 1
  num2 = 1
  sum = 0
  3.upto(n) do
    sum = num1 + num2
    num1, num2 = num2.to_s[-1].to_i, sum.to_s[-1].to_i
  end
  sum
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4