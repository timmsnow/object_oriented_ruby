class Vehicle
  attr_reader :direction, :speed
  attr_writer :turn

  def initialize(input_options)
    @speed = input_options[:speed]
    @direction = input_options[:direction]
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  attr_reader :fuel, :make
  attr_writer :fuel, :make

  def initialize(input_options)
    super
    @make = input_options[:make]
    @fuel = input_options[:fuel]
  end

  def change_fuel(new_fuel)
    @fuel = new_fuel
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  attr_reader :type
  attr_writer :type

  def initialize(input_options)
    super
    @type = input_options[:type]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car1 = Car.new(make: "honda", fuel: "hydrogen", speed: 30, direction: "north")
bike1 = Bike.new(type: "mountain", speed: 10)

bike1.accelerate
p bike1.speed

car1.turn("left")
p car1.direction
car1.honk_horn

car1.change_fuel("diesel")
p car1.fuel
car1.change_fuel("gasoline")
p car1.fuel
car1.turn("right")
p car1.direction
