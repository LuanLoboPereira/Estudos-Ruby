array = Array.new 

puts "Olá, tudo bem ? Digite três números" 
print "Digite o primeiro número: " 
number1 = gets.chomp.to_i 
print "Digite o segundo número: " 
number2 = gets.chomp.to_i 
print "Digite o terceiro número: " 
number3 = gets.chomp.to_i 

array.push(number1)
array.push(number2) 
array.push(number3) 

array.each do |n| 
    potencia = n ** 2 
    puts potencia 
end 