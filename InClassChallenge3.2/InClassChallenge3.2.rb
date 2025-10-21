class House
    attr_reader :rooms
    def initialize(rooms)
        @rooms = rooms
    end
end
class Room
    attr_reader :name, :items
    def initialize(name, items)
        @name = name
        @items = items
    end
end
class Item
    attr_reader :name, :color
    def initialize(name, color)
        @name = name
        @color = color
    end
end

item1 = Item.new("Bed", "Red")
item2 = Item.new("Microwave", "White")
item3 = Item.new("Stove", "White")
room1 = Room.new("Bedroom", [item1])
room2 = Room.new("Kitchem", [item2, item3])
house = House.new([room1, room2])

def get_color_of_bed(house)
    return house.rooms[0].items[0].color
end

puts get_color_of_bed(house)