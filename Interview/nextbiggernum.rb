# You have to create a method that takes a positive integer number and returns
# the next bigger number formed by the same digits:

# 12 ==> 21 
# 513 ==> 531
# 2017 ==> 2071
# If no bigger number can be composed using those digits return -1

# 9 ==> -1
# 111 => -1
# 531 ==> -1

=begin
Problem:
Input: Integer
Output: Integer

Explicit Req:
1. Take the the integer and rearrange the digits in the integer to find the 
smallest possible positive difference between the rearranged digits and the
number provided
2. If no such number can be found, then return -1


Examples:
See below

Database and Algorithm 
Thoughts:
2017 => 2071 
531 => 513, which is less, which means I need to return -1
111 => 111, which is equal

0. Parameter integer will be called `int`
1. Convert the integer to a string `int_string`
2. `int_string` size is equal to 1, we need to return -1
3. `int_string` and index -1 is switched with index -2 assign this value to 
  `switch_digit` - make sure this is converted back into an integer. 
4. If `switch_digit` <= `int` return -1 
5. If `swith_digit > `int` return `switch_digit`
=end

def next_biggest(int)
  int_string = int.to_s
  return -1 if int_string.size == 1
  switch_digit = int_string.clone
  switch_digit[-1], switch_digit[-2] = switch_digit[-2], switch_digit[-1]
  if switch_digit.to_i <= int
    -1
  else
    switch_digit.to_i
  end
end


p next_biggest(12) == 21
p next_biggest(513) == 531
p next_biggest(2017) == 2071
p next_biggest(9) == -1
p next_biggest(111) == -1
p next_biggest(531) == -1