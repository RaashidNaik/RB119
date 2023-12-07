=begin

Problem:
Input: Sting
Output: Boolean

Explicit
1. Create a method that takes the string and ensure that the string is made up
of a repeating sub_string

Implicit Requirements
1. Should be at least 2 or more sub-sbtring

Examples: 
See below

Database & Algorithm
1. Create the method with the `string` variable as the parameter
2. Break up the string into individual characters and place it in an array 
`char_arr`
3. Initialize a variable `sub_string` that contains the first two characters in
the `char_arr` array. Execute the code below and keep adding chars until a true
is returned or we run out of characters. `
  c. `string_size` % `sub_string_size` != 0 this sub-string does not qualify
  d. If `string.size` % `sub_string_size` == 0
    i. Check if `sub_string` * (`string_size / `sub_string_size`) == `string`
    ii. If the above is true we return true
    iii. If the above is false we repeat the steps a. 
4. If we run of out charcters after 3 is complete, then we return false. 
=end

require 'pry'

def repeated_substring_pattern(string)
  sub_string = string[0, 2]
  idx = 1
  loop do
    if string.size % sub_string.size == 0
      return true if sub_string * (string.size / sub_string.size) == string
    end
    idx += 1
    sub_string << string[idx]
    break if idx == (string.size - 1)
  end
  false
end


p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aba") == false
p repeated_substring_pattern("aabaaba") == false
p repeated_substring_pattern("abaababaab") == true
p repeated_substring_pattern("abcabcabcabc") == true