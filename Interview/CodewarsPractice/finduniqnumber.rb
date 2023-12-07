=begin
Problem
Input: Array of Integers
Output: Integer

Examples

Database and Algorithms
1. Define a method and use `arr` as the parameter for the array
2. Iterate through `arr` and assign the parameter `int` to each element in the array.
  a. Count the number of times `int` occurs in `arr` and if the count is = 1, return `int` in the method.
3.end

=end

def find_uniq(arr)
  arr.each { |num| return num if arr.count(num) == 1 } 
end 

p find_uniq([1,1,1,1,0]) == 0
p find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
p find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55