require_relative 'bike'

class DockingStation
  #attr_accessor :bikes

  def initialize
    super
    @bikes = []
  end

  def release_bike
     raise StandardError, 'Piss off!' unless @bikes.length > 0
     @bikes.pop
    # Bike.new
  end

  def return_bike(bike)
    raise StandardError, "I'm all full up!" if @bikes.length == 1
    @bikes << bike
    #@bikes = bike
  end

  def bike
    @bikes[@bikes.length-1]
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
