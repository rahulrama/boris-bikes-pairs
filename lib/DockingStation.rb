
require_relative 'bike'


class DockingStation
attr_reader :bike

	def release_bike
       	@bike = Bike.new 
	 end
	
	def dock(docked_bike)
	   @bike = docked_bike	
	end


end
