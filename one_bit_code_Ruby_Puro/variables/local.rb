def foo 
    # Pode ser definida como local ou _local 
    local = 'Local é acessada apenas dentro deste método' 
    puts local
end 

foo 

# Agora uma variável de mesmo nome, porém global 
local = 12345 
puts local 


# puts local # local é uma variável do método 
# ERRO
# iable or method 'local' for main (NameError)

# puts local
#      ^^^^^