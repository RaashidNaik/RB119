=begin
Problem
Input: String
Output: Hash

Req:
1. Iterate through all the characters in a string and count the number of occurences of each character
2. Conver the character into a symbol and place it into a Hash as the key and the value as the coutn of the characters in the string. 

Examples
See below

Database and Algorithm
1. Define a method with `str` as the parameter for the string.
1.5. return_hash = {}
2. Break `str` into a character array. 
3. Remove duplicates in the character array
4. Iterate through each character in the array assigning `char` as the parameter
  a. Count the presence of that character in `str`
  b. return_hash[char as a symbol] = count of the occurence of the character
  c. Repeat for each character in the array
5. `return_hash`

=end

def letter_count(str)
  return_hash = {}
  str.chars.uniq.each do |char|
    return_hash[char.to_sym] = str.count(char)
  end
  return_hash
end

p letter_count('codewars')  == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity')  == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics')  == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}