phrase = "Olá, tudo bem ? Meu whats app é (99) 74321-1234"

if phrase.match?(/\(\d{2}\)\s\d{5}-\d{4}/)
  puts "Telefone encontrado"
else
  puts "Telefone não encontrado"
end