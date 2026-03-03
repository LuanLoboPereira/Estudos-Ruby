hash = {} 

puts "Olá, tudo bom ?" 
print "Sim ou Não ? " 
option = gets.chomp.capitalize 

if option == 'Não' 
    puts "\nVai ficar bem logo!" 
else 
    puts "\nQue bom!!" 
end 

cont = 0 
while cont < 3 do 
    print "Escreva alguma chave: " 
    key = gets.chomp 
    print "Digite um valor para esta chave: " 
    value = gets.chomp 
    hash[key] = value 
    cont = cont + 1 
    system 'cls'
end 

hash.each do |key, value| 
    puts "Uma das chaves é #{key} e o seu valor é #{value}" 
end
