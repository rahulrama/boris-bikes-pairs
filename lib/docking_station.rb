require_relative "bike"

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock(bike)
    raise 'Docking station full' if @bikes.length >= 20
    @bikes << bike
    @bikes.last

  end

  def release_bike
    raise 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def bikes
    @bikes.last
  end

end
