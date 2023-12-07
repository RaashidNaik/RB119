require 'pry'

def light(n)
  arr = [false] * n
  
  n.times do |pass|
    arr.map!.with_index do |switch, idx|
      if (idx + 1) % (pass + 1) == 0
        !switch
      else
        switch
      end
    end
  end
  
  on_arr = []
  
  arr.each_with_index do  |light, idx|
    on_arr << (idx + 1) if light == true
  end
  
  on_arr 
end

p light(10)
p light(5)
p light(1000)
        
