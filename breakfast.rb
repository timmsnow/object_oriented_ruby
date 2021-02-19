require "./updatable.rb"

class Breakfast
  include Updatable
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
