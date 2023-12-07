=begin
Problem:
Input: Two strings
Output: Boolean True or False

Req:
1. Iterate through all the characters in a string and try to find at least two 
characters in sequential order that match between the two strings. 
2. Character case should not matter. 

Examples
See below

Database and Algorithm
1. Pass two string arguments into parameters `string1` and `string2`
2. Find the shortest string and iterate throug that string first and call that
`short_string`.  And we will call the second `long_string`
3. Convert both short_string and long_string to lower case characters
4. Start at index 0 and 1 for `short_string` and see if there are any matching
characters in `long_string`
  a. If we find a match, return true
  b. If we do not find a match repeat step 4 and increment the index value by 1
  c. We want to stop the iteration as soon as the idx value is 2 below the
  string size
5. Return false

=end

def substring_test (string1, string2)
  short_string = [string1, string2].sort_by {|word| word.size }.first.downcase
  long_string = [string1, string2].sort_by {|word| word.size }.last.downcase
  
  (0..(short_string.size - 2)).each do |idx|
    return true if long_string.include?(short_string[idx, 2])
  end
  false
end

p substring_test('Something', 'Fun')  == false
p substring_test('Something', 'Home')  == true
p substring_test('Something', 'Fun') == false
p substring_test('Something', '') == false
p substring_test('', 'Something') == false 
p substring_test('BANANA', 'banana') == true 
p substring_test('test', 'lllt') == false 
p substring_test('', '') == false 
p substring_test('1234567', '541265') == true
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true