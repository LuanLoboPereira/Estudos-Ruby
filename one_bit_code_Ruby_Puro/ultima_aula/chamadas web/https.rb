require "net/http" 

https = Net::HTTP.new("reqres.in", 443) # instância do objeto, porta 443 => SSL (Segurança) 
# para fazer chamadas https 
https.use_ssl = true # variável de instância setando o objeto 

response = https.get("/api/users") 

puts response.code # status code 

puts response.message # status message 

puts response.body # body (json) 