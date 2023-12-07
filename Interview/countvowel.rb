=begin
Problem:
Input: String
Output: Integer

Requirements
1. Move from left to right through the string and find all sub-strings that
consist entirely of vowels
2. Count the number of these vowel sub-strings that contain 'aeiou'
3. Return that coutn in the method

Examples: 

'cuaieuouac' => 'uaieuoua', 'uaieuo', 'aieuo', 'ieuoua', 'euoua'

Database and Algorithm:
1. 'string' will be the argument variable
2. 'sub_vowel_array' which stores all the vowel sub-strings
3. 'string' must iterate through each character
  a. If we find a vowel we create a substring under the variable sub_string
  b. Keep adding letters to the sub-string, provided that they are vowels
  c. If the sub_string contains all the vowels "aeiou" then we add that to 
  `sub_vowel_array`
  d. Repeat a until we run into the end of the string or encounter a non-vowel
4. Repeat step 3 for the next character in the variable `string`
5. Count the number elements in `sub_vowel_array`
  
=end

def count_vowel_substrings(string)
  sub_vowel_array = []
  string.chars.each_with_index do |char, idx|
    sub_string = ''
    if 'aeiou'.include?(char)
      sub_string << char
      loop do
        break if idx + 1 >= string.chars.count
        if 'aeiou'.include?(string.chars[idx +1])
          sub_string << string.chars[idx + 1]
          if sub_string.chars.uniq.sort == 'aeiou'.chars
            sub_vowel_array << sub_string
          end
        else
          break
        end
        idx += 1
      end
    end
  end
  sub_vowel_array.size
end 
      
      
      
p count_vowel_substrings("abcde") == 0
p count_vowel_substrings("cuaieuouac") == 7
p count_vowel_substrings("aeiouu") == 2
p count_vowel_substrings("unicornarihan") == 0