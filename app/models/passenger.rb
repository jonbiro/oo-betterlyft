class Passenger
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def a_ride
    Ride.all.select do |ride|
      ride.passenger == self
    end
  end


  def rides
    a_ride.map {|ride|ride}
  end

  def drivers
    a_ride.map {|driver|driver}
  end

  def total_distance
    a_ride.map { |ride| ride.distance }.inject(0){|sum,distance| sum + distance }

  end

  def self.premium_members
    Ride.all.select do |ride|
      ride.distance>100
    end.map { |ride| ride.passenger }
  end


  def self.all
    @@all
  end
end
