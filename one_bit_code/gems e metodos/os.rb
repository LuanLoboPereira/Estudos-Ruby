require 'os'
## PESQUISA MAIS BIBLIOTECAS PARA TESTAR E BRINCAR UM POUCO
def my_os 
    if OS.windows? 
        "Windows" 
    elsif OS.linux? 
        "Linux" 
    elsif OS.mac?
        "Mac" 
    else 
        "Sistema operacional não identificado!" 
    end 
end 

puts "Meu PC possui #{OS.cpu_count} cores, é #{OS.bits} e o sistema operaconal (OS) é #{my_os}"