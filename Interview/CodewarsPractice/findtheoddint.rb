=begin
Problem:
Input: Array with Integers
Output: Integer

Req
1. Look at all values in the array starting from left to right and as soon as you find an integer that repeats an odd number of times, return that integer in the method.

Examples:


Database and Algorithms
1. Define a method use `arr` as the parameter for the array
2. Iterate through `arr` assign the parameter for each element to `int`
  a. Count the occurrence of `int` in `arr`
  b. If the count in a. is odd, we will return `int` in the method. 
3. fin
=end

def find_it(arr)
  arr.each do |int|
    return int if arr.count(int).odd?
  end
end


p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) == 5
p find_it([1,1,2,-2,5,2,4,4,-1,-2,5]) == -1
p find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]) == 5
p find_it([10]) == 10
p find_it([1,1,1,1,1,1,10,1,1,1,1]) == 10