=begin

Problem:
Input: Integer
Output: String

Requirments
1. We take each digit in an integer and add the appropriate number of zeroes to
the digit to reflect its place.
2. We repeat this process for each digit and output it as a string that shows
the sum of all digits to equal the integer

Examples:
See test cases

Database and Algorithms:
1. We take the integer `int` and convert it into a string and will store that value 
as `string_num`
2. Determine the size of the `string_num` to see how many zeros belong in the
leftmost digit and assign that variable to `string_size`
3. We iterate through each character in `string_num` with its index value `idx`
and value of `digit`
  a. If the digit is zero, we skip the iteration
  b. We need to determine the number of zeros we add to the digit, which should
  be `string_size` - 1 - idx
  c. We append these zeroes to the digit and store this value `comp_digit` into 
  an array `all_nums`
  d. Iterate through all digits
4. Take the array `all_nums` and join the string elements together with a '+' 
between them. 
=end

def break_down(int)
  string_num = int.to_s.chars
  string_size = string_num.size
  all_nums = []
  string_num.each_with_index do |digit, idx|
    next if digit == '0'
    comp_digit = digit + ('0' * (string_size - 1 - idx))
    all_nums << comp_digit
  end
  
  all_nums.join(' + ')
end 

p break_down(15) == "10 + 5"
p break_down(70305) == "70000 + 300 + 5"
