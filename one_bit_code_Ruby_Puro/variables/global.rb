#  Variáveis globais são de dificil manutenção
class Bar 
    def foo 
        $global = 0 
        puts $global 
    end 
end 

class Baz # Essa classe altera o conteúdo do $global
    def qux 
        $global += 1 
    end 
end 

bar = Bar.new 
baz = Baz.new 
bar.foo
baz.qux 
puts $global 

$global = 12345 
puts $global