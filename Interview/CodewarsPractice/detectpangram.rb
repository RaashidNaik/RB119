=begin
Problem
Input: String
Output: Boolean True or False

Req
1. Reveiw every character in the string and check to see that the string contains at least one occurence of all the characters from a-z

Examples 

Database and Algorithms
1. Define a method and use `str` variable for the parameter
2. Creat an array called `alphabet`, which contains all the letter from  a to z.  Just lowercase
3. Convert `str` into an array of characters and iterate through each of the characters define the element variable as `char`
  a. Check to see if `char` (lowercased) is equal to an element in the `alphabet` array
    i. If `char` is in the alphabet array, I want to delete that character from the array. 
  b.Continue for each character in `str`
4. Check to see if `alphabet` is blank.  If it's blank we return true, if it's not blank, 
we return false.
=end

def pangram?(str)
  alphabet = ('a'..'z').to_a
  str.chars.each do |char|
    alphabet.delete(char.downcase) if alphabet.include?(char.downcase)
  end
  alphabet == []
end

p pangram?("The quick brown fox jumps over the lazy dog.") == true 
p pangram?("This is not a pangram.") == false