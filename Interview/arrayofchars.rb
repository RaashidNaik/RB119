# Given an array of strings made only from lowercase letters, return an array
# of all characters that show up in all strings within the given array (incliding)
# duplicates).  For example, if a character occurs 3 times in all strings but
# but not 4 times you need to include that character three times in the final
# number

=begin
Problem:
Input: Array of strings
Output: Array of strings (characters)

Requirements:
1. Check each of the strings in an array and look at all the character
2. If a given character is present in all the strings, we need to store that
character in an array that is returned. 
3. Repeat this process for all characters even the same ones that have already
been analyzed

Implicit:
Cannot mutate teh array. 

Examples: 
See below


Brainstorm
1. abell, abell, eollrr

Database and Algorithm
1. 

=end



def common_chars(arr)
  new_arr = arr.map {|word| word.dup }
  orig_string = new_arr[0]
  rem_strings = new_arr[1..-1]
  return_array = []
  orig_string.chars.each do |char|
    if rem_strings.all? {|string| string.include?(char)}
      return_array << char
      rem_strings.each { |string| string.sub!(char, '') }
    end
  end
  return_array
end




p common_chars(["bella", "label", "roller"]) # == ["e", "l", "l"]
p common_chars(["cool", "lock", "cook"]) # == ["c", "o"]
p common_chars(["hello", "goodbye", "booya", "random"]) # == ["o"]
p common_chars(["aabbaaaa", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]) # == ["e", "l", "l"]