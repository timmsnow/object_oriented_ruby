muffin = { :size => "large", :flavor => "banana nut", :price => 5 }
cookie = { :size => "x-large", :flavor => "red velvet", :price => 3.50 }
croissant = { size: "small", flavor: "almond", price: 7 }

p "#{croissant[:size]} #{croissant[:flavor]} croissants cost $#{croissant[:price]}. Welcome to New York."

class Breakfast
  attr_reader :food_item, :size, :price
  attr_writer :flavor

  def initialize(input_food_item, input_size, input_flavor, input_price)
    @food_item = input_food_item
    @size = input_size
    @flavor = input_flavor
    @price = input_price
  end

  def print_info
    puts "This #{size} #{food_item} is $#{price}."
  end
end

breakfast1 = Breakfast.new("muffin", "large", "banana nut", 5)
p breakfast1.print_info
