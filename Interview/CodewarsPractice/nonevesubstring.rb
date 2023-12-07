=begin
Problem:
Input: String
Output: Integer

Req:
1. Find the number of sub-strings in the string that can form an odd number when we convert the sub-string to an integer. 

Examples:
See below

Database and Algorithm
1. Define a method with the parameter `str_int` to bring in the string into the method. 
1.5. Define a variable `odd_count`, which keeps track of the number of odd sub-strings. 
2. Iterate through each character in `str_int` from index 0 to the end
  a.Review wheter the character alone is an odd number.
    i. If it is, then we `odd_count` += 1
  b. Initialize a variable `sub_string`, which is set to blank
  c.Iterate through each character in `str_int` on character after the iteration that is being done on step 2. 
    i. Add this character to the chracter in step a and see if it is odd and save this value as `sub_string`
    ii. Check wif `sub_string` is odd, if it is then we `odd_count += 1`
  d. Repeat step 2 with the next index value
3. Return `oddd_count` in the method. 

=end

def solve(str_int)
  odd_count = 0 
  (0..(str_int.size - 1)).each do |idx1|
    sub_string = str_int[idx1]
    odd_count += 1 if sub_string.to_i.odd?
    ((idx1 + 1)..(str_int.size - 1)).each do |idx2|
      sub_string += str_int[idx2]
      odd_count += 1 if sub_string.to_i.odd?
    end
  end
  odd_count
end

p solve("1341")  == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28