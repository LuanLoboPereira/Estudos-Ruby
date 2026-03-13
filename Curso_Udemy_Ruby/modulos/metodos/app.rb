require_relative 'pagamento' 

include Pagamento 

puts "Digite sua bandeira do cartão: " 
b = gets.chomp 

puts "Digite o número do cartão: " 
n = gets.chomp.to_i 

puts "Digite o valor: " 
v = gets.chomp.to_f 

# Duas formas 
puts pagar(b,n,v) 
puts Pagamento::pagar(b,n,v) 