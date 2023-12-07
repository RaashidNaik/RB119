=begin
Problem 
Input: Array of Integers
Output: Integer

Requirements
1. Find the position on the array where the digits on the left of that position
have the same sum as the digits on the right of the position
2. Need to go through each element in the array, except the first and last
position. 

Examples
See below

Database and Algorithm 
1. Define our method and use `arr` as the paramter for the argument
2. Iterate through every index in `arr`. Index parameter will be `idx`
  b. Initialize a variable `left_sum` (0..idx -1) in arr
    i. If `idx` = 0, then the `left_sum` =  0
  c. Initialize a variable `right_sum` ((idx+1)..(arr.size - 1)
    i. If `idx` = arr.size - 1 `righ_sum` = 0
  d. Check if `left_sum` == `right_sum`
    i. If it is true, we return the idx value
    ii. If it is false we go to step 2.
  e. 
3. Once the iteration is compelte, we return a -1 since we checked each element
and `left_sum` never equalled `right_sum`

=end

def find_even_index(arr)
  arr.each_index do |idx|
    left_sum = 0
    if idx == 0
      left_sum = 0
    else
      (0..(idx-1)).each do |idx_left|
        left_sum = left_sum + arr[idx_left]
      end
    end
    right_sum = 0
    if idx == (arr.size - 1)
      right_sum =  0
    else
      ((idx+1)..(arr.size - 1)).each do |idx_right|
        right_sum = right_sum + arr[idx_right]
      end
    end
    return idx if left_sum == right_sum
  end
  -1
end



p find_even_index([1, 2, 3, 4, 3, 2,1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3 
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0 
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6 
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3