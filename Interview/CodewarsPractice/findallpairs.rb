=begin
Problem:
Input: Array of Integers
Output: Integer value

Req
1. Iterate through all the values in the array and find the number of occurences where a value is repeated twice. 
2. Count the total number of pairs and return that value in the method. 
3. If the array is blank, only has one number i.e. no pairs, then return 0.

Examples
See test cases below

Database and Algorithm:
1. Define a method with `arr` as the parameter for the array we are receving. 
2. Define a variable called `pair_count` which keeps track of the number of pairs. Default this value to 0
3. Take `arr` and I'm going to remove duplicates
4. Take the value from 3 and iterate through each value in the array and assign the parameter `int`
  a. Count the number of occurrences of `int` in `arr` and assign that value to `int_count`
  b. If `int_count` is divisible by 2
    i. `int_count` / 2 => add this value to the `pair_count`
  c. Repeat a. 
4. return `pair_count`
=end

def assert_equals(arr)
  pair_count = 0
  arr.uniq.each do |int|
    int_count = arr.count(int)
    if (int_count / 2) > 0
      pair_count = pair_count + (int_count / 2)
    end
  end
  pair_count
end

p assert_equals([1, 2, 5, 6, 5, 2]) == 2
p assert_equals([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p assert_equals([0, 0, 0, 0, 0, 0, 0]) == 3 
p assert_equals([1000, 1000]) == 1
p assert_equals([]) == 0
p assert_equals([54]) == 0