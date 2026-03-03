print "Qual seu nome ? "
nome = gets.chomp 
puts "Olá #{nome}" 
puts "=================" 
print "#{nome} escolha um número de 1 a 150 para ver a tabuada: "
number = gets.chomp.to_i 
print "Escolha um multiplicador de 1 a 10 : " 
mult = gets.chomp.to_i 

c = 1
while c <= mult do 
    resultado = number * c
    puts "#{number} x #{mult} = #{resultado} "
    c += 1
end