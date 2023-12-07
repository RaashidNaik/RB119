=begin
Problem
Input: Array of integers
Output: Hash with key value integers

Requirements
1. Count the number of integers in an array and assign the integer to a key in a hash and the number of occurences of the integer as the value of that key. 


Examples

Database and Algorithms
1. Define a method with `arr` as the parameter for the array argument
2. Initialize the hash `return_hash` that will be returned in the method. ={}
3. `arr` and only select uniq integers from it and iterate through that unique collection. Assign the parameter `int` to each element
  a. Count the occurences of the `int` in the original non-unique `arr` and set that equal to the a value in the `return_hash` with they key being `int` itself
4. `return_hash` at the end of the method 
=end

def group_and_count(arr)
  return_hash = {}
  arr.uniq.each do |int|
    return_hash[int] = arr.count(int)
  end
  return_hash
end


p group_and_count([1,1,2,2,2,3]) == {1=>2, 2=>3, 3=>1}
p group_and_count([0,1,1,0]) == {0=>2, 1=>2}