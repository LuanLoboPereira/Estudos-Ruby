# require './animal.rb' # Encontra o arquivo no path atual, leva em conta onde estou
require_relative './animal.rb' # Não importa o caminho, ele vai buscar, leva em conta onde ta o arquivo que esta sendo execultado
require_relative './cachorro.rb'

puts "Cachorro"
cachorro = Cachorro.new 
cachorro.latir 
cachorro.pular

puts "Animal"
animal = Animal.new 
animal.dormir