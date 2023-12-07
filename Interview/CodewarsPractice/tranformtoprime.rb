=begin
Problem
Input: Array of integers
Output: Integer

Req:
1. Review all the integers in a given array and add them.
2. If the sum is a prime number return 0
3. If the suem is not a prime number, find the minimum number we need to add to this sum to equal a prime number

Examples 

Database and Algorithms
1. Define a method with `arr` as the parameter for the argument
2. Add all the integers together in `arr` and equal that to the `sum` variable
3. Check if `sum` is a prime number
  a. If `sum` is prime then we return a 0
  b. If `sum` is not prime we need to iterate through all the number from 1 to infinite (define this number as `digit`) to find a `prime_sum` whereby the sum is a prime number
    i. Once we find the `digit` where the `prime_sum` is equal to the prime number we return `digit` in the method. 
4.End
=end 

require 'prime'

def minimum_number(arr)
  sum = arr.sum
  return 0 if sum.prime?
  digit = 1
  loop do
    prime_sum = sum + digit
    break if prime_sum.prime?
    digit += 1
  end
  digit
end
    


p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6])  == 5
p minimum_number([50,39,49,6,17,28]) == 2