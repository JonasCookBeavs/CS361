class Ingredient
  def chop
    puts "Chopping the ingredient!"
  end
end

class Pantry
  attr_reader :ingredient

  def initialize
    @ingredient = Ingredient.new
  end

  def chop_ingredient()
    return ingredient.chop
  end
end

class Chef
  attr_reader :pantry

  def initialize
    @pantry = Pantry.new
  end

  def chop_ingredient()
    return pantry.chop_ingredient
  end
end

class Kitchen
  attr_reader :chef

  def initialize
    @chef = Chef.new
  end

  def make_chef_chop_ingredient
    puts "Kitchen instructs chef to chop the ingredient:"
    chef.chop_ingredient
  end
end

kitchen = Kitchen.new
puts "Chef attempts to chop an onion:"
kitchen.make_chef_chop_ingredient