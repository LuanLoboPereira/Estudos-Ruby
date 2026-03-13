require_relative 'pagamento' 

include Pagamento 

puts Pagamento::PI # Nome clalificado 
puts PI # Como já inclui com include, posso chamar PI assim 

# Se rodar só puts PI, vai dar erro, pois o programa não sabe quem é PI, de que modulo veio 
# A não ser que vc inclua com include 