class Pessoa 
#     def falar 
#         "Olá, pessoal!"
#     end 

#     def meu_id 
#         "Meu ID é o: #{self.object_id}"
#     end
# end 

# p = Pessoa.new 
# puts "#{p.falar}, #{p.meu_id}" 
# puts p.meu_id # Mesmo ID

# puts "==========================="

# p2 = Pessoa.new 
# puts "#{p2.falar}, #{p2.meu_id}" 

puts "=============================" 

# Reabrir classes, não recomendado, pode dar algum problema em um sistema 
# Exemplo de reabertura de classe 

class String 
    def inverter # vamos fazer este método se comportar como .reverse 
        self.reverse # Self é o objeto "Luan"
    end 
end 

puts "Luan".reverse # Saída: nauL