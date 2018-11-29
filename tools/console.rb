require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

driver1 = Driver.new("Roman")
driver2 = Driver.new("Mariella")
driver3 = Driver.new("Albina")

passenger1 = Passenger.new("Thompson")
passenger2 = Passenger.new("Joel")
passenger3 = Passenger.new("Jonathan")

ride1 = Ride.new(driver1, passenger1, 20)
ride2 = Ride.new(driver2, passenger2, 40)
ride3 = Ride.new(driver1, passenger3, 110)
ride4 = Ride.new(driver3, passenger3, 120)
ride5 = Ride.new(driver1, passenger1, 450)


# Put your variables here~!

binding.pry
