# Criação de um regex => / /
#Exemplo de regex =>  /abcd/ , %r{abcd} ou Regexp.new('expressao') => Esse conteúdo é o padrão que ele vai procurar de string   

#Em uso:
/abcd/ 
puts /abcd/.class 

#########################

# Encontrar um conteúdo, por exemplo em uma frase 
phrase = 'Estou aprendendo a programar em ruby' 

puts /by/ =~ phrase 

######################### 

phrase = "Hellow, how are you ?" 

match_data = /how/.match(phrase) 

puts match_data.pre_match # valor a esquerda do how 
puts match_data.post_match # valor a direita do how 

# Caracteres especiais => /\?/ => Busca um caracter, põe uma barra de escape antes 

puts /\?/.match("Tudo bem ?") 

# Character classes => Nessa posição da string tem a letra 'x' por exemplo 

puts /[t]exto/.match("texto começando com t") 

puts /[t]exto/.match("----------- texto começando com t") # Pega o padrãoa mais a frente 

# Procurar caracteres de 1..5 

puts /[1-5]/.match("123") 
puts /[2-5]/.match("123") 
puts /[3-5]/.match("123") 
puts /[4-5]/.match("123") 

puts /[a-z]/.match("oi")  
puts /[a-z]/.match("Oi") 

puts /\d/.match("A4") # \d => pega decimal 
puts /A\d/.match("A4") # A\d => pega letra e decimal 
puts /Ab\d/.match("Ab9") 

puts /[0-9][0-9]-[0-9]/.match("11-99") 

# Repetições 

puts /[0-9]{2}-[0-9][0-9]{8}/.match("11-99997778593-") # {2} procurando duas vezes 

puts /\d{2}-\d{8,}/.match("11-99997778593") # {8,} => a vírgula é como se disse-se 8 ou mais caracteres 