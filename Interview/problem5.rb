# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.


=begin
Problem:
Input: String
Output: String

Req:
1. Look at every character in a give string and determine the number of times it occurs
2. The character that occurs the least often should be returned in the method. 
3. If multiple characters have the same least often occurence we return the charcter that occurs first in the word. 
4. Uppercase and lowercase should be considered equivalent. 

Examples

Database and Algorithm. 
1. Define a method with the parameter `str` to represent the string. 
1.5. min_count = nil
1.6. return_string = ''
2. Convert the string into downcase. Break `str` into individual characters and iterate through all the characters in the string.  The parameter will be `char`
  a. Count the number of occurences of `char` in the `str` and assign that count to the variable `char_count`
  b. If the `min_count`` is nil or is greater than `char_count` 
    i. We need to assign `min_count` equal to `char_count`.
    ii. We need assing return_string to `char`
  c. Repeate step a. 
3. `return_char`
=end

require 'pry'

def least_common_char(str)
  min_count = nil
  return_string = ''
  str.downcase.chars.each do |char|
    char_count = str.downcase.count(char)
    if min_count == nil || min_count > char_count
      min_count = char_count
      return_string = char
    end
  end
  return_string
end

# Examples:

p least_common_char("Hello World") #== "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
p least_common_char("Mississippi") #== "m"
p least_common_char("Happy birthday!") #== ' '
p least_common_char("aaaaaAAAA") #== 'a'

# The tests above should print "true".