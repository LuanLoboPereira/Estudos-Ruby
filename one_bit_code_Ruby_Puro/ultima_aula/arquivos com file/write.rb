puts "----Write(escrever)----"
File.open('shopping-list.txt','a') do |line| # Esse 'a' é o apend, quando eu escrever no arquivo não vai sobrescrever 
  line.puts('arroz') # escreve e pula uma linha 
  line.puts('feijão') 
  line.print('azeite') # escreve na mesma linha 
  line.print('de') 
  line.print('oliva') 
end 