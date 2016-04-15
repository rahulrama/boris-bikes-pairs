require_relative 'bike'
require_relative 'bike_container'

class DockingStation

  include BikeContainer


  def release_bike
    release(remove_broken_bikes)
    # fail 'No bikes available' if remove_broken_bikes.empty?
    # bikes.reject{|bike| bike.broken?}.pop
	end

  def dock(bike)
    accept(bike)
  end

  def remove_broken_bikes
    bikes = bikes.reject{|bike| bike.broken?}
    
  end


end
