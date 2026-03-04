# Sem accessor 
# class Dog 
#     def name 
#         @name 
#     end 

#     def name= name 
#         @name = name # seta o valor
#     end 
# end 

# dog = Dog.new 
# dog.name = "Marlon" 
# puts dog.name 


# Usando o atributo accessor 
class Dog 
    attr_accessor :name, :age 
end 

dog = Dog.new 
dog.name = "Marlon" 
puts dog.name 

dog.age = "1 ano" 
puts dog.age
        

        