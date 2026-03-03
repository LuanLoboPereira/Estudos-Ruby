result = '' 

loop do 
    puts result 
    puts "Opções" 
    puts '1- Descobrir a idade de uma pessoa' 
    puts '0- Sair' 
    
    print 'Escolha uma opção: '
    option = gets.chomp.to_i 

    if option == 1 
        puts "Vamos-lá" 
        print 'Qual o ano atual ? ' 
        current_year = gets.chomp.to_i 
        print 'Qual ano de nascimento da pessoa ? ' 
        year_of_birth = gets.chomp.to_i 
        age = current_year - year_of_birth 
        puts "Olá, quem nasceu em #{year_of_birth}, tem #{age} anos em #{current_year}"
    elsif option == 0
        puts "Saindo do programa"  
        break 
    else 
        result = "Opção inválida!" 
    end 
    system "clear"
end      
        