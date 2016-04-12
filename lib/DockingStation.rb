
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
    
	def dock(docked_bike)
	   @bike = docked_bike	
	end


end
