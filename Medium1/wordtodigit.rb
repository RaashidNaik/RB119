def word_to_digit(string)
  conv_arr = string.split(' ')
  conv_arr.map! do |word|
    case word.delete('^a-zA-Z')
    when 'one' then '1'
    when 'two' then '2'
    when 'three' then '3'
    when 'four' then '4'
    when 'five' then '5'
    when 'six' then '6'
    when 'seven' then '7'
    when 'eight' then '8'
    when 'nine' then '9'
    else
      word
    end
  end
  conv_arr.join(' ')
end
    

p word_to_digit('Please call me at five five five one two three four. Thanks.') # == 'Please call me at 5 5 5 1 2 3 4. Thanks.'