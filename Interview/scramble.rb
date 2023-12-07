=begin

Problem
Input: Two string variables
Output: Boolena true or false

Req:
1. Check the first string and determine if a portion of the letters can be 
rearranged to spell out the second string

Examples:
See below

Database and Algorithm
1. Create a method and pass in str1 and str2 as the two parameters for the argument
2. Create a clone of str1 that we can mutate in order to account fo duplicate letters.
We are going to call that str1_clone
3. Iterate through each character in str2 and use char as the variable
  a. If char is included in str1_clone, we substitue that character for a 
  blank once we find it
  b. If char is not include we return false
  c. Repeat 3 for each character
4. End method
=end

def scramble(str1, str2)
  str1_clone = str1.clone
  str2.chars.each do |char|
    return false unless str1_clone.include?(char)
    str1_clone.sub!(char, '')
  end
  true 
end



p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true 
p scramble('cedewaraaossoqqyt', 'codewars')  == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true