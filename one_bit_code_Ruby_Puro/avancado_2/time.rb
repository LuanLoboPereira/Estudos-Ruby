time = Time.now 
puts time 
puts time.year 
puts time.strftime("%d/%m/%y") # Defino a ordem 
puts time.strftime("%d") # Somente o dia 
puts time.strftime("%D") # Data formatada 
puts time.strftime("%M") # Minuto 
puts time.strftime("%m") # Mês 
puts time.saturday? # É sabádo ? 

time2 = Time.new 
puts time == time2 # Datas diferentes 