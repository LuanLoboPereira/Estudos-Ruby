require "nokogiri" 
require "net/http" 

https = Net::HTTP.new("onebitcode.com", 443) 

https.use_ssl = true 

response = https.get("/") # (get) pegando a home 

doc = Nokogiri::HTML(response.body) # objeto que o Nokogiri gera para poder exibir 

last_post = doc.at("h2") # pegar tag <h3> e tag <a> 

if last_post 
  puts last_post.content 
  puts last_post["href"] 
else 
  puts "Post não encontrado" 
end 

