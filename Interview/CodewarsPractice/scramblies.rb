=begin
Problem
Input: Two Strings
Output: Boolean True or False

Req
1. Review the first string and see if it can be rearranged to spell out the second string.

Examples
See below

Database and Algorithms
1. Define the method with the parametrs `str1` and `str2` 
2. Duplicate `str2` set that equal to `mut_str2`
3. Iterate through each of the characters in `str1` by converting it into an array of characters and using the paramete `char`
  a. Check if `mut_str2` includes `char`.  If it does then I want to delete `char from `mut_str`
  b. Repeat step 3 for the rest of the characters.
4. `mut_str2` == '' returns either true or false
=end

def scramble(str1, str2)
  mut_str2 = str2.dup
  str1.chars.each do |char|
    mut_str2.delete!(char) if mut_str2.include?(char)
  end
  mut_str2 == ''
end



p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt', 'codewars'  ) ==  true
p scramble('katas', 'steak') == false
p scramble('scriptjava',        'javascript') ==  true
p scramble('scriptingjava',     'javascript') == true