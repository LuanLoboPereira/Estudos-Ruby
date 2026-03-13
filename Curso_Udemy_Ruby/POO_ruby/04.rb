# Self
# class Pessoa 
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

#puts "=============================" 

# Reabrir classes, não recomendado, pode dar algum problema em um sistema 
# Exemplo de reabertura de classe 

# class String 
#     def inverter # vamos fazer este método se comportar como .reverse 
#         self.reverse # Self é o objeto "Luan"
#     end 
# end 

# puts "Luan".reverse # Saída: nauL 

#puts "=============================" 

# Variáveis de Instância
# class Aluno
#     def initialize(nome_aluno = "Fulano")
#         @nome = nome_aluno 
#     end

#     def mostrar_nome
#         puts "Este é o aluno #{@nome}"
#     end 
# end

# a1 = Aluno.new
# a1.mostrar_nome 

# a2 = Aluno.new("Luan") 
# a2.mostrar_nome

# puts "=============================" 

# Accessors
class Funcionario 
    #attr_accessor :nome # Eu poderia fazer dessa forma abaixo 
    def initialize(nome = "teste")
        @nome = nome 
    end 

    def set_nome=(nome)
        @nome = nome 
    end 

    def get_nome 
        @nome
    end 
end 

# Para não ter que fazer todo o fluxo acima, só o método accessor dará conta
# class Funcionario 
#     #attr_accessor :nome # Eu poderia fazer dessa forma abaixo
# end

p1 = Funcionario.new 
p1.set_nome = "Luan" # setter, atribui este valor 
p1.set_nome = "Naul" # setter, este valor foi atrbuido e saio o anterior 
p1.set_nome = "luan" # setter, este valor foi atrbuido e saio o anterior
puts p1.get_nome # getter