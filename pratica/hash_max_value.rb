numbers = {'A': 10, 'B': 30, 'C': 15, 'D':25, 'E': 15} 

 max_value = numbers.max_by{|key, value| value}

key = max_value[0]
value = max_value[1] 

puts "#{key} => #{value}"


