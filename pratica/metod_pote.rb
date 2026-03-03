puts "Olá tudo bem ?" 

print "Digite um número base: "
number_base = gets.chomp.to_i 

print "Digite um expoente: " 
number_expo = gets.chomp.to_i

def expoente(number_base, number_expo)
    result = number_base ** number_expo 
    puts "O número #{number_base} elevado a #{number_expo} é #{result}"
end 

puts expoente(number_base, number_expo)