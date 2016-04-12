
require_relative 'bike'


class DockingStation
attr_reader :bike

# Original code which passed original test
def release_bike
       if @bike
           fail "Bike already exists"
           else
           @bike = Bike.new
       end
	end

# Makers walkthrough code gave error on bike.working?
#def release_bike
    
    #   fail 'No bikes available' unless @bike
    #@bike = Bike.new
    #end
    
#Our code which passed	
def dock(docked_bike)
	if @bike
            fail "Dock already full"
           else
            @bike = docked_bike
           end
	end

#Makers code which is more legible
#def dock(bike)
 #   fail 'Docking station full' if @bike
  #  @bike = bike
 # end

end
