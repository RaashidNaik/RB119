=begin
Problem:
Input: String
Output: String

Req. 
1. Review each character in a string and its index value. 
2. If the index value is even, then upcase the character. If the index value is odd, then downcase the character
3. If there are multiple words, then reset the process for each word.

Examples

Database and Algorithms
1.Define a method with `str` as the parameter for the string argument
2. Split each word in `str` into an array.  I want to return an array of the same size with the words mutated.  The parameter for each word is going to be called `word`
  a. Split each character in `word` and assign the parameter `char` to it and form a new array of the mutated characters.
    i. Join the character array that is created
3. Return the array in 2 joined with spaces. 
=end

require 'pry'

def weirdcase(str)
  str.split.map do |word|
    word.chars.map.with_index do  |char, idx|
      if idx.even?
        char.upcase
      elsif idx.odd?
        char.downcase
      else
        char
      end
    end.join
  end.join(' ')
end 

p weirdcase('This')  ==  'ThIs'
p weirdcase('is')  ==  'Is'
p weirdcase('This is a test')  ==  'ThIs Is A TeSt'