class Pen 
  attr_accessor :color 
  def pen_color 
    puts "The color is " + self.color # self é a própria instância da classe 
    # Exemplo de como ele é: 
    # puts "The color is " + color 
  end 
end 

pen = Pen.new 
pen.color = "Blue" 
pen.pen_color 