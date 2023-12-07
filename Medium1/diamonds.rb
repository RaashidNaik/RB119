def diamond(num)
  
  out_rows = (num - 1) / 2
  
  stars = 1
  out_rows.times do
    puts ("*" * stars).center(num)
    stars += 2
  end
  
  puts ("*" * stars).center(num)
  
  out_rows.times do
    stars -= 2
    puts ("*" * stars).center(num)
  end
  
end

diamond(9)