class Foo 
  def call_private 
    self.bar
    # bar # chamando o médoto bar abaixo 
  end 

  private 

  # Método protegido pelo private, não consigo chamá-lo pela instância dele 
  # Para chamar um método private, tem que chamar de dentro da classe dele  
  def bar 
    puts "Private method" 
  end 
end 

fo = Foo.new 
fo.call_private 