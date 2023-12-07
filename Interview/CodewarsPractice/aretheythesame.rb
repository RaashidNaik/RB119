=begin
Problem
Input: Two arrays with integers
Output: Boolean True or False

Req
1. Iterate through the first array and determine if each element in this array has a corresponding square in the second array. 

Examples

Database and Algorithms
1. Define a method with the parameters `arr1` and `arr2`
2. Initialize a variable `square_count` = 0 will keep track of the number of elements that have squares in the array.
3. Iterate through `arr1` and used the parameter `int1` for each element
  a. Iterate through `arr2` and use the parameter `int2` for each element
  b. If find `int1` ** 2 === `int2`
    i. `square_count` += 1
  c. 
4. `square_count` is equal to the `arr1`.size return true if not it will return false
=end 

def comp(arr1, arr2)
  square_count = 0
  arr1.each do |int1|
    arr2.each do |int2|
      if (int1 ** 2) == int2
        square_count += 1
        break
      end
    end
  end
  square_count == arr1.size
end


p comp( ([121, 144, 19, 161, 19, 144, 19, 11]), ([11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19])) == true