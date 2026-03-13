require "nokogiri" 
require "net/http" 

https = Net::HTTP.new("onebitcode.com", 443) 
# Para fazer chamadas https 
https.use_ssl = true 

response = https.get("/") # (get) pegando a home 

doc = Nokogiri::HTML(response.body) # objeto que o Nokogiri gera para poder exibir 

h1 = doc.at("h2") 
puts h1.content # conteúdo 
puts h1 # Comteúdo e código 

