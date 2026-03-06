name_lambda = lambda do |name| 
  puts name.capitalize
end 
 

def capitalize_name(my_lambda) 
  my_lambda.call("João") 
  my_lambda.call("Maria") 
end 

capitalize_name(name_lambda)






# Passando um Array

# name1 = 'maria' 
# name2 = 'joão'

# names = Array.new 
# names.push(name1, name2) 

# name_capitalize = lambda do |names| 
#   names.each {|name|puts name.capitalize} 
# end

# def capitalize_name(name_capitalize, names)  
#   name_capitalize.call(names) 
# end 

# capitalize_name(name_capitalize,names) 
