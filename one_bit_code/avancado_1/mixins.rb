module ImpressaoDecorada 
  def imprimir text 
    decoracao = '#' * 50
    puts decoracao 
    puts text 
    puts decoracao 
  end 
end 

module Pernas 
  include ImpressaoDecorada # incluindo, fazendo um mixin entre os módulos

  def chute_frontal 
    imprimir 'Chute frontal' 
  end 

  def chute_lateral 
    imprimir 'Chute lateral' 
  end 

  def joelhada 
    imprimir 'Joelhada no estômago' 
  end
end 

module Bracos 
  include ImpressaoDecorada 

  def jab_de_direita 
    imprimir 'Jab de direita' 
  end 

  def jab_de_esquerda 
    imprimir 'Jab de esquerda' 
  end 

  def gancho 
    imprimir 'Gancho de esquerda' 
  end 
end 

class LutadorX 
  include Pernas 
  include Bracos 
end 

class LutadorY 
  include Pernas 
end 

lutadorx = LutadorX.new 
lutadorx.chute_frontal 
lutadorx.jab_de_direita 

lutadory = LutadorY.new 
lutadory.chute_frontal 
lutadory.chute_lateral
