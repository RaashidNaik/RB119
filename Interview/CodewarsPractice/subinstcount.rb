=begin
Problem:
Input: Array with two strings
Output: Integer

Req:
1. Count the number of occurences of the second string in the array in the first string. 
2. Return the count in the method

Examples
See below

Database and Algorithm
1. Define a method with two parameters, `str1` and `str2`
2. Count the number of occurences of str2 in str1 and return that number

=end

def assert_equals(str1, str2)
  str1.count(str2) / str2.size
end



p assert_equals('abcdeb','b') ==  2
p assert_equals('abcdeb', 'a') == 1
p assert_equals('abbc', 'abb') == 1