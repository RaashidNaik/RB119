def closest_numbers(arr)
  min_diff = arr.max - arr.min
  close_arr = []
  arr.each_with_index do |num1, idx1|
    arr.each_with_index do |num2, idx2|
      next if idx1 == idx2
      diff = (num1 - num2).abs
      if diff < min_diff 
        min_diff = diff
        close_arr = [num1, num2]
      end
    end
  end
  close_arr
end

p closest_numbers([5, 25, 15, 11, 20])# == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16])#  == [25, 27]
p closest_numbers([12, 7, 17]) # == [12, 7]