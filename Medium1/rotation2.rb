def rotate_rightmost_digits(num, n)
 num_string =  num.to_s[0..(-n-1)] + rotate(num.to_s[-n..-1])
 num_string.to_i
end

def rotate(num)
  num[1..-1] + num[0]
end


p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917