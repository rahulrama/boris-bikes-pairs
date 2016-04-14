=begin
require './lib/DockingStation'

station = DockingStation.new

station.release_bike

bike = station.release_bike

station2 = DockingStation.new
bike2 = station2.release_bike


station.dock(bike)

station.dock(bike2)

bike.working?

bike2.working?
=end

