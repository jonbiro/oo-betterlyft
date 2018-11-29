class Ride
  attr_accessor :driver, :passenger, :distance
  @@all = []
  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance.to_f
    @@all << self
  end


  def self.average_distance
    list = @@all.map { |ride| ride.distance }
    list.reduce(:+).to_f / list.size

  end


  def self.all
    @@all
  end
end
