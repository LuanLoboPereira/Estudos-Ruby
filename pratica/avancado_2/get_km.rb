class Car

  def get_km(text)
    km = find_km(text)
    puts km
  end

  private

  def find_km(text)
    text.match(/\d+km\/h/)
  end

end

car = Car.new
car.get_km("Um fusca de cor amarela viaja a 80km/h")