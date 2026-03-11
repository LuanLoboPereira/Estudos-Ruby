require "nokogiri" 
require "net/http" 

https = Net::HTTP.new("onebitcode.com", 443) 

https.use_ssl = true 

response = https.get("/") # (get) pegando a home 

doc = Nokogiri::HTML(response.body) 

doc.search('h2').each do |a| 
  if a
    puts a.content 
    puts a['href'] 
    puts "" 
  elsif a == nil
    puts "Vazio" 
  else 
    puts "Conteúdo não encontrado" 
  end 
end 
