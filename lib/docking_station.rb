require_relative 'bike'

class DockingStation
  attr_reader :bikes
  attr_accessor :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
    @bikes_broken = []
  end


  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    if bike.broken?
      @bikes_broken << bike
    else
      @bikes << bike
    end
    bike
  end

  private

  #attr_reader :bikes

  def full?
      @bikes.count >= @capacity
  end

  def empty?
      @bikes.empty?
  end

end
