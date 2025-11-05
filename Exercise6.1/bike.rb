# Bike
require_relative 'pannier'
require 'forwardable'
class Bike
  extend Forwardable

  STANDARD_WEIGHT = 200 # lbs
  MAX_CARGO_ITEMS = 10

  attr_accessor :id, :color, :price, :weight, :rented, :cargo_contents

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo_contents = Pannier.new(MAX_CARGO_ITEMS)
  end

  def rent!
    self.rented = true
  end

  def_delegators :@cargo_contents, :add_cargo, :remove_cargo, :remaining_capacity

end