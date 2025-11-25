class Employee

  def prepare(bike)
    bike.prepare()
  end

end

module PrepareBike
  def prepare
    raise NotImplementedError "#{self.class} must implement the 'prepare' method"
  end
end

class BmxBike
  include PrepareBike
  def prepare
    puts 'Cleaning...'
  end

end

class RoadBike
  include PrepareBike
  def prepare
    puts 'Lubricating gears...'
  end

end

class MountainBike
  include PrepareBike
  def prepare
    puts 'Adjusting suspension...'
  end

end

class Tricycle
  include PrepareBike
  def prepare
    puts 'Adjusting seat...'
  end

end

bikes = [BmxBike.new, RoadBike.new, MountainBike.new, Tricycle.new]

employee = Employee.new

bikes.each do |bike|
  employee.prepare(bike)
end