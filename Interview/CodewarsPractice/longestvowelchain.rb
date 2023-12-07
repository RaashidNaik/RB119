=begin
Problem
Input: String
Output: Integer

Req
1. We iterate through all the characters in the string provided. 
2. If we encounter a vowel sub_string we determine its length.
3. We return the size of the largest vowel sub-string in the method

Examples
See below

Database and Algorithms. 
1. Define our method and set the string parameter to `str`
1.5. Intialize a variable vowel_sub_strings = []
1.6. Initialize a variable vowel_string = ''
2. Place all the characters in `str` in an array
3. Iterate through the array in step 2 and use the parameter `char`
  a. If `char` is a vowel aeiou, then we add `char` to the `vowel_string`
  b. If `char` is not a vowel
    i. We add `vowel_string` to `vowel_sub_string` only if `vowel_string` != ''
    ii `vowel_string` = ''
  c. Repeate a
4. vowel_sub_strings and we sort by size, take the last value and determine its size and return that integer in the method


=end

require 'pry'

def solve(str)
  vowel_sub_strings = []
  vowel_string = ''
  str.chars.each_with_index do |char, idx|
    if 'aeiou'.include?(char)
      vowel_string << char
    else
      vowel_sub_strings << vowel_string if vowel_string != ''
      vowel_string = ''
    end
  end
  vowel_sub_strings << vowel_string if vowel_string != ''
  vowel_sub_strings.sort_by {|sub| sub.size}.last.size
end

p solve("codewarriors")  == 2
p solve("suoidea") == 3
p solve("iuuvgheaae")  == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8