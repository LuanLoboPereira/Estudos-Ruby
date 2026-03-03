invalid = '' 
options = {'0': 'Sair', '1': 'Somar', '2': 'Subtrair','3': 'Multiplicar','4': 'Dividir'}

loop do 
    puts "==========="
    puts "Calculadora" 
    puts "===========" 
    print 'Digite um número: '
    number1 = gets.chomp.to_i 
    print 'Digite outro número: ' 
    number2 = gets.chomp.to_i 
    puts 
    

    puts "Opções : "
    options.each do |key, value|
        puts "#{key} => #{value}" 
    end
    print "Escolha uma opção: " 
    option = gets.chomp.to_i 
    puts

    case option 
    when 0 
        break
    when 1 
        result = number1 + number2
        puts "O resultado da operação obtida é #{result}"
        puts 
        puts "Pressione Enter para continuar"
        gets
        system "cls"
    when 2 
        result = number1 - number2
        puts "O resultado da operação obtida é #{result}"
        puts 
        puts "Pressione Enter para continuar"
        gets
        system "cls"
    when 3 
        result = number1 * number2
        puts "O resultado da operação obtida é #{result}"
        puts 
        puts "Pressione Enter para continuar"
        gets
        system "cls" 
    when 4 
        result = number1 / number2
        puts "O resultado da operação obtida é #{result}" 
        puts 
        puts "Pressione Enter para continuar"
        gets
        system "cls" 
    else 
        invalid = "Opção inválida!"
    end
    system "cls"
end