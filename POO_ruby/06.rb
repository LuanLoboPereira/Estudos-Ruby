class Pessoa  
    def falar # método de instância / precisa instânciar
        "Hello World" 
    end 

    def self.gritar(texto) # método de classe / NÃO precisar instânciar
        "#{texto}!!!" 
    end
end 

p1 = Pessoa.new 
puts p1.falar 

puts Pessoa.gritar("Hello")