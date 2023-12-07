# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

=begin
Problem:
Input: String
Output: String

Requirements
1. Iterate through each word in the string.  Words are separated by spaces with no
need to look for punctuation.
2. I need find every third word an from that work every 2nd character must be uppercased.
3. Return this altered string in the method

Database and Algorithms
1. Define a method with `str` as the parameter
2. Split the words in the `str` variable into a new array (e.g. ["Lorem", "Ipsum", "is" etc.])
3. Iterate through each value in the array in 2 and assign `word` parameter to each element and word_idx to each index
  a. If `word_idx`  + 1 is divisible by 3 return then iterate throuch each character in the string and assign the `char` parameter to each character and `char_idx` to each index value.  The outcome of this iteration should generate an array that is assigned to the variable `char_arr`
    i. If `char_idx` + 1 is divisible by 2, mutate the character in the word to an upcase value
    ii. Return the mutated word
  b. If `word_idx` + 1 is not divisible by 3, return the original word
4. Assign the array created in 3 to the variable word_arr
5. Join `word_arr` words together and return this value at the end of the method. 
=end


def to_weird_case(str)
  word_arr = str.split.map.with_index do |word, word_idx|
    if (word_idx + 1) % 3 == 0
      char_arr = word.chars.map.with_index do |char, char_idx|
        if (char_idx + 1) % 2 == 0 
          char.upcase
        else
          char
        end
      end
      char_arr.join
    else
      word
    end
  end
  word_arr.join(' ') 
end

# Examples:

p to_weird_case('Lorem Ipsum is simply dummy text of the printing')  == 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case('It is a long established fact that a reader will be distracted') == 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case('Miss Mary Poppins word is supercalifragilisticexpialidocious') == 'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# The tests above should print "true".