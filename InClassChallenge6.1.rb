class EventManager
  R = 6378100   # radius of the earth in m
  D = DistanceCalculator.new

  def initialize(eventList)
    @eventList = eventList
  end

  def findEventsNear(lat, lon, maxDist=5000)
    events = []

    @eventList.each { |event|
      name, type, elat, elon = event.split(":")
      elat = elat.to_f
      elon = elon.to_f

      if D.distance(lat, lon, elat, elon) < maxDist
        events << event
      end
    }
    
    events
  end

  def findEarthquakesNear(cityName)
    cityRecord = nil

    @eventList.each { |event|
      name, type, elat, elon = event.split(":")
      elat = elat.to_f
      elon = elon.to_f

      if type == "city" && name == cityName
        cityRecord = event
      end
    }

    if cityRecord.nil?
      return nil
    end

    name, type, clat, clon = cityRecord.split(":")
    clat = clat.to_f
    clon = clon.to_f

    events = []

    @eventList.each { |event|
      name, type, elat, elon = event.split(":")
      elat = elat.to_f
      elon = elon.to_f

      if type == "earthquake"
        if D.distance(elat, elon, clat, clon) < 5000
          events << event
        end
      end
    }

    events
  end

  def addEvent(name, lat, lon time)
    @eventList << Event.new(name, lat, lon, time)
  end

end

  
class Event
  attr_accessor :name, :lat, :lon, :time
  def initialize(name, type, lat, lon, time=-1)
    @name = name
    @lat = lat
    @lon = lon
    @time = time
  end

end

class DistanceCalculator
  def distance(lat1, lon1, lat2, lon2)
    # https://stackoverflow.com/a/27943

    dLat = self.deg2rad(lat2 - lat1)
    dLon = self.deg2rad(lon2 - lon1)
    a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
      Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) *
      Math.sin(dLon / 2) * Math.sin(dLon / 2)
    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
    R * c  # distance in m
  end

  def deg2rad(d)
    d * Math::PI / 180
  end
end

starting_events = [
  Event.new("some volcano", "volcano", 40.12120, -121.3455, 21451),
  Event.new("some earthquake", "earthquake", 39.23890, -120.23985, 17354),
  Event.new("Townville", "city", 44.05645, -121.30812)
]

em = EventManager.new(starting_events)

x = em.findEventsNear(40.5, -121.2, 163000)
pp x

puts "------------------------"

x = em.findEarthquakesNear("Cityton")
pp x