require_relative "bike"

class DockingStation
  DEFAULT_CAPACITY = 20


  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock(bike)
    raise 'Docking station full' if full?
    @bikes << bike
    @bikes.last

  end

  def release_bike
    raise 'No bikes available' if empty?
    @bikes.pop
  end

  def bikes
    @bikes.last
  end

  private
  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end