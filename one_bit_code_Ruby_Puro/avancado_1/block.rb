# Bloco é um conjunto de instruções 

5.times { puts "Exec the block" } 

# Um bloco também pode receber parâmetros 

sum = 0 # 5 + 10 + 5 = 20
numbers = [5, 10, 5] 
numbers.each {|number| sum += number} 
puts sum 

# Block de multiplas linhas, conjunto de códigos 

foo = {2 => 3, 4 => 5} 

foo.each do |key, value| 
    puts "Key = #{key}" 
    puts "Value = #{value}" 
    puts "Key * value #{key * value}" 
    puts "---------------------------" 
end

# Método que recebe um bloco como parâmetro 

def foo # Método Genérico
    # Call the block 
    yield # => Execulta um bloco passado como parâmetro
    yield  # Chamando duas vezes 
end 

foo do # Passando esse parâmetro para o método 
    puts "Exec the block" 
    puts 1234 
end

# Bloco pode ser passado opcionalmente 
# Nem todo método precisa receber um bloco 
# Podemos verificar se um bloco foi passado ou não 

def foo 
    if block_given? # Se o bloco foi dado a gente execulta 
        # Call the block 
        yield 
    else 
        puts "Sem parâmetro do tipo bloco"    
    end 
end 

foo # nenhum bloco sendo passado 
foo {puts "Com parâmetro do tipo bloco"} # bloco sendo passado  

# Somente um bloco pode ser passado como método! 

def foo(name, &block) 
    @name = name 
    block.call 
end 

foo ("Mestre Splinter") {puts "Hellow #{@name}"} 

# Podemos passar um bloco que ocupa várias linhas como parâmetro 

def foo(numbers, &block) 
    if block_given? 
        numbers.each do |key, value| 
            block.call(key, value) 
        end
    end 
end 

numbers = {2 => 2 , 3 => 3, 4 => 4} 

foo(numbers) do |key, value| 
    puts "#{key} * #{value} = #{key * value}" 
    puts "#{key} + #{value} = #{key + value}" 
    puts "-----------------------------------"
end 