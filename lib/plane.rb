class Plane

  attr_accessor :in_flight

  def initialize
    @in_flight = true
  end

  def land(airport, weather)
    raise 'Plane already landed' unless self.in_flight
    raise 'Airport full' if airport.full?
    raise 'Unsafe to land' if weather.stormy?
    airport.stored_planes.push(self)
    confirmation(airport)
    land_status
  end

  def confirmation(airport)
    puts "#{self} has landed at #{airport}"
  end

  def land_status
    self.in_flight = false
  end

  def flight_status
    self.in_flight = true
  end

end
