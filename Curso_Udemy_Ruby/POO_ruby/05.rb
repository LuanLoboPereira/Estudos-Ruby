#EXEMPLO DE HEREANÇA ( < )
class Pessoa 
    attr_accessor :nome, :email 
end 

class PessoaFisica < Pessoa
    attr_accessor :cpf 
    def falar(texto)
        return texto 
    end 
end 

class PessoaJuridica < Pessoa
    attr_accessor :cnpj 
    def pagar_fornecedor 
        puts "Pagando o fornecedor!" 
    end 
end 

p1 = Pessoa.new

#setter
p1.nome = "Luan"
p1.email = "admin.hello@gmail.com" 

#getter
puts p1.nome
puts p1.email
puts "===================="
p2 = PessoaFisica.new 

#setter 
p2.nome = "Naul" 
p2.email = "hello.world@hotmail.com" 
p2.cpf ="0000000988" 

#getter
puts p2.nome 
puts p2.email 
puts p2.cpf 

puts p2.falar("Hello")

puts "====================" 

p3 = PessoaJuridica.new 

#setter
p3.nome = "Luan Lobo" 
p3.email = "world.earth@outlook.com" 
p3.cnpj = "234145887/98" 

#getter
puts p3.nome 
puts p3.email 
puts p3.cnpj

puts p3.pagar_fornecedor




