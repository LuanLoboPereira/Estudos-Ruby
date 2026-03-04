class Esportista 
    def competir 
        "participando de uma competição" 
    end 
end 

class JogadorDeFutebol < Esportista
    def correr 
        puts "Correndo atrás da bola" 
    end 
end 

class Maratonista < Esportista
    def correr 
        puts "Percorrendo o circuito" 
    end 
end 

puts "Olá, você é jogador de futebol ou maratonista ?"
print "1 jogador 2 maratonista: " 
sport = gets.chomp 

if sport == '1'
    atleta = JogadorDeFutebol.new 
    puts "Então você deve estar #{atleta.competir}" 
    puts "E vai estar..."
    atleta.correr 
elsif sport == '2' 
    atleta = Maratonista.new 
    puts "Então você deve estar #{atleta.competir}" 
    puts "E vai estar..."
    atleta.correr 
else 
    puts "Opção inválida!"
end



