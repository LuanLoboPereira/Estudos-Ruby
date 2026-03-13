class Instrumento # Classe Pai
    def escrever 
        puts "Escrevendo" 
    end 
end 

class Teclado < Instrumento 
    def escrever 
        puts "Tecladoooo" 
        super # Se quiser usar o método do pai e o da Classe filho, usar o super
    end 
end 

class Lapis < Instrumento 
    def escrever # Sobrescreve o método do Pai
        "Escrevendo a Lápis" 
    end 
end 

class Caneta < Instrumento 
    def escrever # Sobrescreve o método do Pai
        puts "Escrever a Caneta" 
    end 
end 

teclado = Teclado.new 
lapis = Lapis.new 
caneta = Caneta.new 

# puts "Lápis: #{lapis.escrever}"  

# puts "Caneta:" 
# caneta.escrever 

puts "Teclado:" 
teclado.escrever