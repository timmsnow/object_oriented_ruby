module Updatable
  def half_off
    @price = @price * 0.5
  end

  def out_of_stock
    @size = "OUT OF STOCK"
    @flavor = "OUT OF STOCK"
  end
end
