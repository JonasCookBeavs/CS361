# Pannier

class Pannier
  def initialize(max)
    @max_items = max
    @contents = []
  end

  def add_cargo(item)
    @contents << item
  end

  def remove_cargo(item)
    @contents.remove(item)
  end

  def capacity
    @max_items
  end

  def remaining_capacity
    @max_items - @contents.size
  end
end