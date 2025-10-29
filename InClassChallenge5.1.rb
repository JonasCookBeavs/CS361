class Player
  attr_accessor :name, :hp, :str, :dex, :con, :int, :wis, :cha

  def initialize(name, armor, weapon, hp, stats)
    @name = name
    @hp = hp
    @str = stats[0]         # stats
    @dex = stats[1]
    @con = stats[2]
    @int = stats[3]
    @wis = stats[4]
    @cha = stats[5]
    @armor = armor
    @weapon = weapon
  end

  def damage(p)
    @hp -= p
  end

  def compute_damage(base)
    # Pretend this is some complex thing with AC
  end

  # And more functions here to handle stats, weapons, and armor
end

class Weapon
  def initialize(name, damage)
    @name = name
    @damage = damage

class Armor
  def initialize(name, ac)
    @name = name
    @ac = ac
    
w = Weapon.new("Short sword", "1d6")
a = Armor.new("Chain mail", 16)
a2 = Armor.new("Iron helmet", 8)
stats = [9, 12, 8, 18, 10, 2]
p = Player.new("Alfredo", [a, a2], w, 10, stats)