hash = {0 => 'zero', 1 => 'um', 2 => 'dois', 3 => 'três', 4 => 'quatro'} 

puts "Selecionando keys com valor maior que zero" 

selection_key = hash.select do |key, value| 
    key > 2
end 

puts selection_key

    