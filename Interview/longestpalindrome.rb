=begin
Problem:
Input - string
Output - integer

Req:
1. Find the longest sub_string in the string that is also a palindrome (i.e. 
the word is the same when the order of the letters are reversed)
2. sub-strings can be one or more characters.


Examples

Database and Algorithm
1. Create a method and use `str` as the parameter
2. Initialize a variable called `max_length` and set this to 1 
3. Iterate through each character in the `str` starting at idx: 0 and towards
str length - 1
  a. Initialize a variable called `sub_string` = str[idx]
  b. Iterate through subsequent character starting idx + 1 and add it to `sub_string`
  c. Check if the sub_string is a palindrome
    i. If it is a palindrome determine the size of the sub_string
    ii. If the sub_string size > `max_length`, then set `max_length` to the 
    new value
  d. Repeat step 3 above.
4. Repeat step 3 above
5. Return `max_length`
=end


def longest_palindrome(str)
  max_length = 1
  (0..(str.size - 1)).each do |idx|
    sub_string = ''
    (idx..(str.size - 1)).each do |idx2|
      sub_string << str[idx2]
      if sub_string == sub_string.reverse
        max_length = sub_string.size if sub_string.size > max_length
      end
    end
  end
  max_length
end



p longest_palindrome('a') == 1
p longest_palindrome('aa') == 2
p longest_palindrome('baa') == 2
p longest_palindrome('aab') == 2
p longest_palindrome('baabcd') == 4
p longest_palindrome('baablkj12345432133d') == 9 