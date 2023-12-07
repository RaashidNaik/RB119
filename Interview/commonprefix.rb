=begin
Problem:
Input: Array of strings
Output:String

Requirements
1. For a given array look at the longest prefix common among all the strings
in the array and return that prefix.

Examples
See below

Database and Algorithms
0. The array will be passed in with the parameter name `array`
1. Take the smallest string by size first `small_string`
2. Iterate through each character in `small_string`
3. Create a string called `prefix` = ''
4. If the characters match at index 0 for all strings then we add that character
to the `prefix` variable
5. If they don't we stop
6. Return `prefix`
=end

def common_prefix(array)
  small_string = array.sort_by { |word| word.size }.first
  prefix = ''
  (0..(small_string.size - 1)).each do |idx|
    if array.all? {|string| small_string[idx] == string[idx] }
      prefix << small_string[idx]
    else
      break
    end
  end
  prefix
end 





p common_prefix(["flower", "flow", "flight"])  == "fl"
p common_prefix(["dog", "racecar", "car"])  == ""
p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
p common_prefix(["throne", "dungeon"]) == ""
p common_prefix(["throne", "throne", "throne"]) == "throne"