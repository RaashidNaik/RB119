# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.


=begin
Problem:
Input: Array of Integers
Output: nil or an integer

Req
1. Iterate from left to right and we determine the sum of 5 consecutive integers
2. We keep doing that process until we encounter less than 5 consecutive integers
3. For each iteration, we determine the sum and return the minimum value

Examples:
See below

Database and Algorithms
1. Define our method with `arr` as the parameter
2. First we check if the `arr` size is less than 5 and return nil if it is.
2.5. `min_sum` = 0 
3. Iterate through `arr` for each element define the index parameter as idx1
  a. Initialze array called `sum_arr`
  b. Iterate through the remaining array from idx1 + 1 to arr.size - 1
  c.  Add subsequent values from `int` to `sum_arr`
  d. If `sum_arr` == 5, then we calculate the sum `sum_arr`
    i. `min_sum` < sum of `sum_arr` then we set `min_sum` to that value
    ii. break the loop
  e. Start from step 3
4. Return the `min_sum`


=end

def minimum_sum(arr)
  return nil if arr.size < 5
  min_sum = arr[0, 5].sum
  (1..(arr.size - 1)).each do |idx1|
    sum_arr = []
    sum_arr << arr[idx1]
    ((idx1 + 1)..(arr.size-  1)).each do |idx2|
      sum_arr <<  arr[idx2]
      break if sum_arr.size == 5
    end
    break if sum_arr.size < 5
    min_sum = sum_arr.sum if sum_arr.sum < min_sum
  end
  min_sum
end





# Examples:

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".