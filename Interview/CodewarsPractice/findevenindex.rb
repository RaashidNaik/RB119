=begin
Problem
Input: Array of Integers
Output: Integer

Req
1. Go through the array index by index and find on where the integers to the right are equal to the integer to the left
2. The index value selected will not be included in the calculation.
3. If the index value is 0 or the last index value, the sum to the left and right respectively will be zero

Examples:

Database and Algorithms
1. Define a method with `arr` as the parameter for the array. 
2. Initialze a variable `sum_equal_index` = -1
3.Iterate through `arr` using a range value for the `idx1` 
  # a. Intitialze the variable `left_sum` = nil 
  # b. Initialize the variable `right_sum` = nil
  c. Range from 0 to idx1 is going to be the left side and we are going to sum all the integer and have that equal to `left_sum`
  d. Range from idx1 + 1 to last index is going to be the right side and we aare going to sum all the integer and have that equal `right_sum`
  e. Check if `right_sum` == `left_sum`
    i. True: `sum_equal_index` = `idx1` ==> return this value
    ii. False: keep on iterating
4. Return `sum_equal_index1
=end


def find_even_index(arr)
  (0..(arr.size - 1)).each do |idx1|
    left_sum = arr[0,idx1].sum
    right_sum = arr[(idx1 + 1), arr.size].sum
    return idx1 if right_sum == left_sum
  end
  -1
end

p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index(Array(1..100)) == -1
p find_even_index([0,0,0,0,0]) == 0
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
p find_even_index(Array(-100..-1)) == -1
