require "./breakfast.rb"
require "./updatable.rb"

class Perishable < Breakfast
  include Updatable

  def initialize
    @shelf_life = "5 days"
  end
end
