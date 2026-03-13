class User 
    @@user_count = 0 # Contar quantos users são cadastrados
    def add(name) 
        puts "User #{name} add" 
        @@user_count += 1 
        puts @@user_count 
    end 
end 

first_user = User.new 
first_user.add('João') 

second_user = User.new 
second_user.add('Mario') 