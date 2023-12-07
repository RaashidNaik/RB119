=begin
Problem
Input: Integer
Output: Integer

Req
1. Find all integers below the number provided that are multiples of 3 or 5.
2. If the number is a multiple of both, then include it only once
3. Once we find all these integers take the sume of them and provide that as the return value in the method.

Examples:

Database and Algorithms
1. Define method and use `num` as the parameter for the argument. 
2. `mult_arr` initialized, which will contain all the multiples and we will set this to a blank array. 
3. Range from 1 to `num` - 1 and iterate through each number and use `int` as the parameter
  a. If `int` is divisible by 3 or 5, include `int` in the `mult_arr`
4. `mult_arr` sum all the numbers in the array
=end 

def solution(num)
  mult_arr = []
  (1...num).each do |int|
    mult_arr << int if int % 3 == 0 || int % 5 == 0
  end
  mult_arr.sum
end


p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168