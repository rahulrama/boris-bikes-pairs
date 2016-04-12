require_relative 'bike'

class DockingStation

  def initialize
    @bike_rack = 0
  end

  def release_bike
      Bike.new
  end

  def return_bike(bike)
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
