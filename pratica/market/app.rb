require_relative './product.rb' 
require_relative './market.rb' 

puts "Menu Mercado" 
puts "Adicione o nome do produto e o preço do mesmo: " 
print "Nome do produto: " 
name_pruduct = gets.chomp.to_s 
print "Preço do produto: " 
price_product = gets.chomp.to_f 

productP = Product.new(name_pruduct, price_product) 

puts "\n----------Seu carrinho----------" 
cart = Market.new(productP.name, productP.price) 
cart.buy
