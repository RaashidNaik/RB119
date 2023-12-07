def max_rotation(num)
  rotate_num = num
  num.to_s.size.downto(2) do |n|
    rotate_num =rotate_rightmost_digits(rotate_num, n)
  end
  rotate_num
end

def rotate_rightmost_digits(num, n)
 num_string =  num.to_s[0..(-n-1)] + rotate(num.to_s[-n..-1])
 num_string.to_i
end

def rotate(num)
  num[1..-1] + num[0]
end


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845