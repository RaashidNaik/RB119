# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

=begin
Problem
Input: Array of integers
Output: Array of integers

Requirements
1. Iterate through the array find the two numbers that represent the smallest difference when subtracted from one another. 
2. The two numbers should be placed in an array that is returned in the method. 
3. The numbres should be returned in the order they are found.

Examples
See below

Database and Algorithm:
1. Define a method with `arr` as the parameter for array
1.5. Create a variable called min_sum = arr.max - arr.min
1.6. Create a variable called return_arr = []
2. Iterate through each value of `arr`.  Assign `int1` as the element value and `idx1` as the index.
  a. Iterate again through `arr`.  Assign `int2` as the element and `idx2` as the index value
    i. If `idx1` = `idx2` we need to skip the comparison
    ii. We calculate array values at idx1 and idx2 difference - - turn it into an absolute value. 
        a. If this value is less than `min_sum`, then we make `min_sum` equal to that value
        b. We also make `return_arr` = [`int1`, `int2`]
  b. Repeaet step 2 for the next value etc. 
3. Return the `return_arr`
=end

def closest_numbers(arr)
  min_sum = arr.max - arr.min
  return_arr = []

  arr.each_with_index do |int1, idx1|
    arr.each_with_index do |int2, idx2|
      next if idx1 == idx2
      if (int1 - int2).abs < min_sum
        min_sum = (int1 - int2).abs 
        return_arr = [int1, int2]
      end 
    end
  end
  return_arr
end

# Examples:

p closest_numbers([5, 25, 15, 11, 20])  == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16])  == [25, 27]
p closest_numbers([12, 7, 17])  == [12, 7]

# The tests above should print "true".