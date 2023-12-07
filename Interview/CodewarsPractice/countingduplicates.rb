=begin
Problem
Input: String
Output: Integer

Req
1. Review a string and count the number of times characters repeat more than once in the string
2. If a character repeats more than twice, it should only count as one.
3. Case should not matter, basically "I" == "i"

Examples

Database and Algorithms
1. Define a method with `str` as the parameter for the string argument
2. Initialize a variable called `dup_count` = 0, which keeps track every time we encounter a character that is present more than once in the string. 
3. Breatk `str` into an array of characters and interate through each character and name the element parameter `char`
  a. If `char` occurs in the string more than once, then `dup_count` += 1
4. Return `dup_count`
=end

def duplicate_count(str)
  str2 = str.dup
  str2.downcase!
  dup_count = 0
  already_count = []
  str2.chars.each do |char|
    next if already_count.include?(char)
    if str2.count(char) > 1
      dup_count += 1
      already_count << char
    end
  end
  dup_count
end


p duplicate_count("") == 0
p duplicate_count("abcde") ==  0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2
