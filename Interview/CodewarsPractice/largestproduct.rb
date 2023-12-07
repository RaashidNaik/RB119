=begin
Problem
Input: String
Output: Integer

Req
1. Go through all the digits in a string and find 5 consecutive digits that yield the largest value when multiplied to one another.
2. Return that product value in the method

Examples

Database and Algorithm
1. Define a method with the `str_int` as the parameter for the string that we are receiving
2. `max_product` = 0
3. Iterate through all the digits in `str_int` and use `first_num` as the parameter for each element
  a. `five_digit` equal `first_num`
  b.Iterate through subsequent characters after `first_num` and include the next 5 digits concat the next 5 digits to `five_digit`
  c. `five_digit` and break it down into individual characters and then multiply them all together and save this as `temp_product`
  d. `temp_product` > `max_product` if it is, we make `max_product` = `temp_product`
4. Return `max_product`
=end

def greatest_product(str_int)
  max_product = 0 
  (0..(str_int.size - 5)).each do |first_idx|
    five_digit = str_int[first_idx]
    ((first_idx + 1)..(first_idx + 4)).each { |next_idx| five_digit << str_int[next_idx] }
    temp_product = five_digit.chars.inject(1) {|memo, num| memo * num.to_i }
    max_product = temp_product if temp_product > max_product
  end
  max_product
end 



p greatest_product("123834539327238239583")  == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0