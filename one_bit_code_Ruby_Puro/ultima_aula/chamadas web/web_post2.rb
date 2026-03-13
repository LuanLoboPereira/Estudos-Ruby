require "net/http" # biblioteca padrão do Ruby para fazer requisições HTTP 
require "json"     # biblioteca para trabalhar com JSON (converter hash em JSON) 


uri = URI("https://jsonplaceholder.typicode.com/posts") # cria um objeto URI com o endereço da API 


req = Net::HTTP::Post.new(uri) # cria uma requisição HTTP do tipo POST para essa URI 

# define o tipo de conteúdo que está sendo enviado para a API 
# aqui informamos que o corpo da requisição está em formato JSON 
req["Content-Type"] = "application/json" 

# corpo da requisição (dados que serão enviados para a API) 
# criar uma hash e e ela será convertida para JSON 
req.body = {
  title: "Ruby",
  body: "Aprendendo POST",
  userId: 1
}.to_json # converte o Hash Ruby para JSON

# inicia a conexão HTTP com o servidor
# uri.hostname -> domínio da API
# uri.port -> porta utilizada (443 para https)
# use_ssl: true -> indica que a conexão é HTTPS
response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
  http.request(req) # envia a requisição POST para o servidor
end

# mostra o código HTTP que foi retornado pela API
puts "Código da requisição => " + response.code 

# imprime a mensagem associada ao código HTTP
puts "Tradução do código => " + response.message

# imprime o corpo da resposta da API 
puts response.body