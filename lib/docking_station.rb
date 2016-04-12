require_relative 'bike'

class DockingStation
  attr_accessor :bike_rack

  def initialize
    @bike_rack = 1
  end

  def release_bike
     raise StandardError, 'Piss off!' unless @bike_rack > 0
     @bike_rack -= 1
     Bike.new
  end

  def return_bike(bike)
    raise StandardError, "I'm all full up!" if @bike_rack == 1
    @bike_rack += 1
    @bike = bike
  end

  def bike
    @bike
  end
  end


=begin
def initialize
  @bike_rack = 0
end

 def release_bike
     Bike.new
 end

 def bike_rack #getter
   @bike_rack
 end

 def bike_rack=(n) #setter
   @bike_rack = n
 end
=end





# Emma's bike return system
# def return_bike(bike_object)
#   @bike_rack << bike_object
# end
