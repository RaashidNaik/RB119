=begin
Problem:
Input: String
Output: An array with a string and integer

Req
1. Break down the string into a sub-string that when we multiply the sub-string by an integer, it will generate the string

Examples
See below

Database and Algorithm 
1. Define a method with `str` as the parameter
1.5 `sub_string` = '' 
1.6 `return_arr` = []
2. Iterate from left to right starting at index 0 an ending at the end of the string.
  a. `sub_string` equal the character at index that we are iterating at += sub_string value. 
  b. `int` should be `str` size / `sub_string` size
  c. Check if `sub_string` * int == `str` 
    i. If c is true then `return_arr` \ [ `sub_string`, int]
3. `return_arr`
=end

require 'pry'

def f(str)
  sub_string = ''
  return_arr = []
  (0..(str.size - 1)).each do |idx|
    sub_string += str[idx]
    int = str.size / sub_string.size
    return return_arr = [sub_string, int] if (sub_string * int == str)
  end
end

p f("ababab")  == ["ab", 3]
p f("abcde") == ["abcde", 1]