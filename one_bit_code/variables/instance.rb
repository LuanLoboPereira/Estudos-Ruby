class User 
    def add(name) 
        @name = name  # variavel de instância
        puts "User add" 
        hello 
    end 
    
    def hello 
        puts "Welcome, #{@name}" # Instância permite o uso dentro deste método
    end
end 

user = User.new 
user.add('Luan')
