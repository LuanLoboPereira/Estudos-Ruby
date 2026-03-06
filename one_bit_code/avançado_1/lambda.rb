# Um bloco acaba sendo um parâmetro para o lambda 

first_lambda = lambda {puts "My first lambda"} # Armazenando um lambda dentro de uma variável, e estou passando um block como parâmetro para o lambda 
first_lambda.call # retorna um objeto 
first_lambda.call 
first_lambda.call 

# Um sintaxy diferente para criar um lambda 

first_lambda = -> {puts "My first lambda"} 
first_lambda.call 

# Lambda pode receber parâmetros 

# Um detalhe, (nomes) é passado como parâmetro para o lambda, e depois execultado com each dentro do bloco 
first_lambda = -> (names){names.each {|name|puts name}} # Execultando uma função que recebe um bloco dentro de um lambda 

names = ["João", "Maria", "Pedro"] 

first_lambda.call(names) 

# Lambda de múltiplas linhas *LEMBRANDO, UM LAMBDA DE MÚLTIPLAS LINHAS DEVE SE CHAMAR lambda não ( -> ) 

my_lambda = lambda do |numbers| 
    index = 0 
    puts "Número atual + próximo número" 
    numbers.each do |number| 
        return if numbers[index] == numbers.last 
        puts "(#{numbers[index]}) + (#{numbers[index + 1]})" 
        puts numbers[index] + numbers[index + 1] 
        index += 1 
    end 
end 

numbers = [1, 2, 3, 4] 

my_lambda.call(numbers)

# O lambda pode ser passado como argumento para um método também 
# Diferença é que posso passar mais de um argumento lambda 
# O lambda é passado como argumento para o método, diferente do bloco que é chamado, assim => &block ou com yield 

def foo(first_lambda, second_lamda) 
    first_lambda.call 
    second_lamda.call 
end 

first_lambda = -> {puts "My first lambda"} 
second_lamda = -> {puts "My second lambda"} 

foo(first_lambda, second_lamda)
