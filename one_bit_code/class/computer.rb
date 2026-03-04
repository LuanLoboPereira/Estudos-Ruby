class Computer 
    def turn_on 
        'Computador ligado' 
    end 

    def shutdown 
        'Computador desligado' 
    end 
end 

computer = Computer.new() 
puts computer.turn_on