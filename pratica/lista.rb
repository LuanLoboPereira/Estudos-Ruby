dias = ["Segunda", "Terça", "Quarta", "Quinta" ,"Sexta", "Sabádo", "Domingo"] 

dias.each do |d| 
    puts "( #{d} )" 
end

print "Olá, quer saber a tarefa de hoje ? Digite um dia: "
opcao = gets.chomp.capitalize 

case opcao 
when "Segunda"
    puts "Andar de bike 5 km" 
when "Terça"
    puts "Sair pro dojo" 
when "Quarta" 
    puts "Treinar em casa e no dojo"
when "Quinta"
    puts "Descansar, e jogar um play"
when "Sexta"
    puts "Treinar no dojo"
when "Sabádo"
    puts "Sair para comer com minha familia"
when "Domingo" 
    puts "Jogar um play"
else 
    puts "Você escreveu algo errado ai ?!"
end 

