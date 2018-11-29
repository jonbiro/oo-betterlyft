
class Driver
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end


  def passenger_names

  Ride.all.select do |ride|
    ride.driver == self
  end.map {|ride|ride.passenger.name}.uniq
  end

  def rides
  Ride.all.select do |ride|
    ride.driver == self
  end.map {|ride|ride}
  end

  def self.mileage_cap(distance)
    Ride.all.select do |ride|
      ride.distance > distance
    end.map {|ride|ride.driver}.uniq
  end


  def self.all
    @@all
  end
end
