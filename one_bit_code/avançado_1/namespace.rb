# Namespace, espaço de nomes que não conflita com nomes normais  
module ReverseWorld 
  def self.puts text 
    print text.reverse.to_s 
  end 

  class Imprimir 
    def call text 
      print text 
      print "----imprimir----" 
    end
  end 
end 



imprimir = ReverseWorld::Imprimir.new 
imprimir.call 'O resultado é ' 


# module NormalWorld 
#   def self.puts text 
#     print text  
#   end 
# end 