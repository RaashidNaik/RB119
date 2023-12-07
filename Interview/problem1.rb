# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

# Examples:



# The tests above should print "true".


=begin

Problem:
Input: Array of Integers
Output: Array of Integers

Req:
1. Iterate through each element in the array and determine the number of integers in the
rest of the array that are smaller than it. 
2. If a number is encountered twice, we should only count that number once

Examples
See below

Database and Algorithms
1. Define a method with the parameter being `arr`
1.5. count_arr = []
2. Iterate through each element in `arr` and define the element as `int1` and the index as `idx1`
  a. diff_arr = []
  b. Iterate again through each element in `arr` and define the element as `int2` and the index as `idx2`
    i. Skip this iteration if the idx1 == idx2
    ii. diff_arr << int1 - int2
  c. Eliminate all duplicates and select only values that are greater than 0. Then count the number of elements in this adusted array to get the total count
  d. Return that count to the array.  If the array is blank then we have return 0
3. Return count_arr

=end

def smaller_numbers_than_current(arr)
  count_arr = []
  arr.each_with_index do |int1, idx1|
    diff_arr = []
    arr.each_with_index do |int2, idx2|
      next if idx1 == idx2
      diff_arr << int1 - int2
    end
    count_arr << diff_arr.uniq.select {|num| num > 0 }.size 
  end
  count_arr 
end

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]