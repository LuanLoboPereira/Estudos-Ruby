require 'net/http' 

example = Net::HTTP.get("example.com", "/index.html") 

File.open("example.html", "w") do |line| # Criando arquivo html com a chamada do example.com 
  #  w => Escrita e sobscrever
  line.puts(example) # escrever linha por linha do que tem dentro do example
end 