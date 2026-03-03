class Register 
  attr_accessor :nome, :cpf, :email, :senha

  def initialize(nome, cpf, email, senha)
    @nome  = nome
    @cpf   = cpf
    @email = email
    @senha = senha
  end
end

class Register_user < Register
    def first_register 
    end
end

puts "============"
puts "Pizza Planet"
puts "============"

puts "Olá, seja bem vindo ao cardápio do Pizza Planet, cadastre-se ou faça login para pedir😁🍕🌏❤️"
puts

print 'Você tem cadastro? (S/N): '
opcao = gets.chomp.upcase

if opcao == 'S'
  puts "Olá, bem vindo de volta!"
else
  puts "Vamos para o cadastro"
  puts 
  print 'Seu nome: '
  nome = gets.chomp 
  puts 
  print 'Informe seu cpf: ' 
  cpf = gets.chomp 
  puts 
  print 'Informe seu email: ' 
  email = gets.chomp 
  puts 
  print 'Senha: ' 
  senha = gets.chomp 
  user = Register.new(nome,cpf,email,senha) 
  puts 
  puts "Cadastro Realizado com sucesso!" 
  puts "Bem vindo #{user.nome}" 
end 
