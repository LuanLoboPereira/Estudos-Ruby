array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 

selection = array.select do |a| 
    a >= 9
end 

puts selection 

names = ['']