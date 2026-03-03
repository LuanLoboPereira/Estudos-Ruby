require "cpf_cnpj"

option = {"0": "Sair","1": "Validar CPF", "2": "Validar CNPJ", "3": "Gerar CPF",} 
jump = ''

# TESTES
# CPF => 96140398096 
# CNPJ => 35623528000100

loop do 
    puts jump
    puts "Este programa valida cpf e cnpj"
    puts "Ele também gera cpf para testes" 

    option.each do |key, value| 
        puts "#{key} => #{value}"
    end 
    print "Escolha uma opção: " 
    option_program = gets.chomp 

    if option_program == "0" 
        puts "Sistema encerrado!"
        break 
        system 'cls'
    elsif option_program == "1" 
        print "Digite o CPF para ser validado: " 
        cpf = gets.chomp 
        result = CPF.valid?(cpf)
        if result == true 
            puts "✅ Este CPF é válido!" 
        else 
            puts "❌ CPF inválido" 
        end 
    elsif option_program == "2" 
        print "Digite o CNPJ para ser validado: "
        cnpj = gets.chomp 
        result = CNPJ.valid?(cnpj) 
        if result == true 
            puts "✅ Este CNPJ é válido!" 
        else 
            puts "❌ CNPJ inválido" 
        end
    elsif option_program == "3" 
        print "Gerando CPF"
        cpf_generate = CPF.generate 
        puts "CPF gerado => #{cpf_generate}" 
        print "Quer validar o cpf gerando S✅ ou N❌ ?" 
        option_user = gets.chomp.capitalize

        if option_user == "S" 
            CPF.valid?(cpf_generate)
            puts "✅ CPF [ #{cpf_generate} ] valido!"
        elsif option_user == "N" 
            puts  "Voltando ao menu..."
        end 
    else 
        puts "❌ Opção inválida!" 
        puts " Digite uma opção válida!!"
    end
end 
    