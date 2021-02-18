# muffin = { :size => "large", :flavor => "banana nut", :price => 5 }
# cookie = { :size => "x-large", :flavor => "red velvet", :price => 3.50 }
# croissant = { size: "small", flavor: "almond", price: 7 }

# p "#{croissant[:size]} #{croissant[:flavor]} croissants cost $#{croissant[:price]}. Welcome to New York."

class Breakfast
  attr_reader :food_item, :size, :price
  attr_writer :flavor

  def initialize(input_options)
    @food_item = input_options[:food_item]
    @size = input_options[:size]
    @flavor = input_options[:flavor]
    @price = input_options[:price]
  end

  def print_info
    puts "This #{@size} #{@food_item} is $#{@price}."
  end

  def teacher_discount
    @price = @price * 0.75
  end
end

class Food < Breakfast
  def initialize
    @shelf - life
  end
end

breakfast1 = Breakfast.new(food_item: "muffin", size: "large", flavor: "banana nut", price: 5)
breakfast2 = Breakfast.new(food_item: "cookie", size: "x-large", flavor: "macadamia nut", price: 15)
breakfast3 = Breakfast.new(food_item: "croissant", size: "tiny", flavor: "nutella", price: 4)
breakfast1.print_info
p breakfast2.food_item
breakfast3.print_info
breakfast3.teacher_discount
breakfast3.print_info
