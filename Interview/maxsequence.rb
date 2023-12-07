=begin

Problem:
Input: Array of Integers
Output: Integer

Requirements
1. Determine the maximum sum of a group of adjacent integers in an array. 
2. The "group" of integers can comprise just one integer or an entire array. 

Examples: 
See below 

Brainstorm


Database and Algorithm
1. Create a method with the parameter set to `arr`
2. Define a variable for the maximum sum `max_sum` = 0 
3. Set the initial index value for the iteration to `idx` = 0 
4. Iterate through each integer in the array starting at `idx` = 0 
  a. Define temp_arr = []
    i. Add the arr[idx] to temp_arr
    ii. Calculate the sum of temp_arr and if it is greater than `max_sum`, we 
    will make `max_sum` equal to that value
    ii. Iterate through each subsequent value in the array using idx += 1
    iii. Iterate until idx is the same as the array size
    iv. repeat step 4
5. Return the max_sum value

=end

require 'pry'

def max_sequence(arr)
  max_sum = 0 
  arr.each_with_index do |num, idx|
    sum_arr = [num]
    max_sum = max_sum = sum_arr.sum if sum_arr.sum > max_sum
    idx2 = idx + 1
    next if idx2 == arr.size
    loop do 
      sum_arr << arr[idx2]
      max_sum = sum_arr.sum if sum_arr.sum > max_sum
      idx2 += 1
      break if idx2 == arr.size
    end
  end
  max_sum
end


p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1,-5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0 
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12