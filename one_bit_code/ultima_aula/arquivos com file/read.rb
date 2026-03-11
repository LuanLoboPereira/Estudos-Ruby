puts "----Read(leitura)----"
puts "--Lista de Compras--" 

file = File.open('shopping-list.txt') 

# puts file # Retorna um objeto 

file.each do |line|
  puts line 
end