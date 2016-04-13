
require_relative 'bike'


class DockingStation
attr_reader :bikes

def initialize
    @bikes = []
  end
# Original code which passed original test
def release_bike
     fail 'No bikes available' if @bikes.empty?
           @bikes.pop
	end

# Makers walkthrough code gave error on bike.working?
#def release_bike
    
    #   fail 'No bikes available' unless @bike
    #@bike = Bike.new
    #end
    
#Our code which passed	
def dock(bike)
	if @bikes.count >= 20
            fail "Dock already full"
           else
            @bikes << bike
           end
	end

#Makers code which is more legible
#def dock(bike)
 #   fail 'Docking station full' if @bike
  #  @bike = bike
 # end

end
