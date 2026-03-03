array = [1, 2, 3, 4] 

puts "\nAgora esta execultando o .map multiplicando cada item por 2" 
# lembrando o map não altera o conteúdo do array original 
new_array = array.map  do |a|
    a * 2
end 

puts "\nArray original" 
puts "#{array}" 

puts "\nArray do .map multiplicado" 
puts "#{new_array}" 

puts "\nEste map! está forçando o array orginal a ser alterado" 
# Ou seja, ele será atualizado agora!
array.map! do |a|
    a * 2
end 
puts "#{array}"