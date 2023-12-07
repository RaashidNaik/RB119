=begin
Problem
Input: Array with Integers, Integer
Output: Array with two integers

Req
1. Search from left to right in the first array and find two numbers that sum to the second number in the argument. 
2.  If multiple pairs occur that sum to that second number, return the one with the smallest secon index.
3. If no numbers can be found that meet these requirements return nil. 

Examples

Database and Algorithms
1. Define a method with the parameters `arr` and `sum` for the secon number
1.5. `sum_arr` = nil
1.6 Initialze a variable called `lowest_idx` = arr.size - 1
2. Iterate through the `arr` and assign the parameter `int1` for each element in the array and `idx1` for each index value
  a.Iterate through `arr` again and include the index value and assign the parameter `int2` and `idx2`
    i. If `idx1`` = `idx2` we want to skip the loop
    ii. If `int1` + `int2` = `sum` && `idx2` <= `lowest_idx`
      `sum_arr` = [`int1`, `int2`]
      `lowest_idx` = `idx2`
3. Return `sum_arr`

=end

def sum_pairs(arr, sum)
  sum_arr = nil
  lowest_idx = arr.size - 1
  (0..(arr.size - 1)).each do |idx1|
    ((idx1 + 1)..(arr.size - 1)).each do |idx2|
      if arr[idx1] + arr[idx2] == sum && idx2 <= lowest_idx
        sum_arr = [arr[idx1], arr[idx2]]
        lowest_idx = idx2
      end
    end
  end
  sum_arr
end


l1= [1, 4, 8, 7, 3, 15]
l2= [1, -2, 3, 0, -6, 1]
l3= [20, -13, 40]
l4= [1, 2, 3, 4, 1, 0]
l5= [10, 5, 2, 3, 7, 5]
l6= [4, -2, 3, 3, 4]
l7= [0, 2, 0]
l8= [5, 9, 13, -3]



p sum_pairs(l1, 8) == [1, 7] 
p sum_pairs(l2, -6) == [0, -6]
p sum_pairs(l3, -7) == nil
p sum_pairs(l4, 2) == [1, 1]
p sum_pairs(l5, 10) == [3, 7] 
p sum_pairs(l6, 8) == [4, 4] 
p sum_pairs(l7, 0) == [0, 0] 
p sum_pairs(l8, 10) == [13, -3]