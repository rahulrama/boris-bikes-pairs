require_relative 'bike'

class DockingStation
  
  attr_accessor :bike_rack

def initialize
  @bike_rack = 0
end

 def release_bike
     Bike.new
 end



# Emma's bike return system
# def return_bike(bike_object)
#   @bike_rack << bike_object
# end


end
