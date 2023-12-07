answers = [ 'a', 42, 'c', 'd', 19, 'c', 'b']
truths = ['Your hard work will pay off', 'The sky is blue', "You are worth it"]
lyrics = ['Never', 'Gonnna', 'Give', 'You', 'Up', true]

def all_strings?(arr)
  arr.all? { |val| val.is_a? String }
end


p all_strings?(answers) == false  #=> true
p all_strings?(truths) == true    #=> true
p all_strings?(lyrics) == false   #=> true