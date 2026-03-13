require_relative 'pagamento' 

include Pagamento::Master # Quando tenho um módulo dentro do outro devo incluir ele também 

puts Pagamento::Master::pagando 