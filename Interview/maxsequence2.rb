require 'pry'

def max_sequence(arr)
  max_sum = 0
  (0..(arr.size - 1)).each do |idx|
    sum_arr = []
    (idx..(arr.size - 1)).each do  |idx2|
      sum_arr << arr[idx2]
      max_sum = sum_arr.sum if max_sum < sum_arr.sum
    end
  end
  max_sum 
end
      
    


p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1,-5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0 
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12