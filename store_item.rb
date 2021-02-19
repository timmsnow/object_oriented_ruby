require "./breakfast.rb"
require "./updatable.rb"
require "./perishable.rb"

breakfast1 = Breakfast.new(food_item: "muffin", size: "large", flavor: "banana nut", price: 5)
breakfast2 = Breakfast.new(food_item: "cookie", size: "x-large", flavor: "macadamia nut", price: 15)
breakfast3 = Breakfast.new(food_item: "croissant", size: "tiny", flavor: "nutella", price: 4)
breakfast1.print_info
p breakfast2.food_item
breakfast3.print_info
breakfast3.teacher_discount
breakfast3.print_info
