class Animal  # Classe Pai
    def pular 
        puts "Toing! tóing! bóim! póim!" 
    end 
    
    def dormir 
        puts "ZzZzzzz" 
    end 
end 

class Cachorro < Animal # Classe Filho herda de Classe Pai
    def latir 
        puts "Au Au" 
    end 
end 

class Gato < Animal # Classe Filho herda de Classe Pai
    def meow 
        puts "Meow" 
    end 
end 

cachorro = Cachorro.new 
puts cachorro.dormir # Classe cachorro herda dormir de Classe Animal
puts cachorro.pular # Classe cachorro herda pular de Classe Animal
puts cachorro.latir # Comportamento da classe Cachorro 

puts "----------"
gato = Gato.new 

puts  "O gato faz #{gato.meow}"