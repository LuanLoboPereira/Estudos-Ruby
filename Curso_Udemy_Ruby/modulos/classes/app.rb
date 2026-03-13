require_relative 'pagamento' 

include Pagamento # Usar ou não, já que chamei o modulo ali em baixo 

p1 = Pagamento::Visa.new 
puts p1.pagando 