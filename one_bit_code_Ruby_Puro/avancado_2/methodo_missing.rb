class Fish 
  def method_missing(method_name) 
    puts "Fish don't have #{method_name} behavior" 
  end 

  def swim 
    puts "Fish is shimming" 
  end 
end 

fish = Fish.new 
puts "Método existente" 
fish.swim 
puts 
puts "Agora com método inexistente!" 
fish.walk 
fish.run