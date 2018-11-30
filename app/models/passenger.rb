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
    Ride.all.select do |ride|
      ride.passenger == self#.map {|ride|ride}
    end
  end

  def drivers
    rides.map {|ride|ride.driver}.uniq
  end

  def total_distance
    Ride.all.select do |ride|
      ride.passenger == self
    end.inject(0){|sum,ride| sum + ride.distance }
#.map { |ride| ride.distance }
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
