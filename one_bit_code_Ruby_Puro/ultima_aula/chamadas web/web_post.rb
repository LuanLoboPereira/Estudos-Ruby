require "net/http" 

req = Net::HTTP::Post.new("/api/users") # criando objeto 
# para fazer chamadas https 
req.set_form_data({name: 'Mario', job: 'Encanador'}) # setando parâmetros no site acima 

# passando use_ssl como parâmetro 
response = Net::HTTP.start('reqres.in', use_ssl: true) do |https| # fazendo a chamada 
  https.request(req) # fazendo a request
end 

puts response.message # código de sucesso 
puts response.body 