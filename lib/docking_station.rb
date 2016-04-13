require_relative 'bike'

class DockingStation
  attr_reader :bikes
  attr_reader :capacity

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

	def dock(bikes)
    fail "Docking station full" if full?
    if bikes.broken?
      @bikes_broken << bikes
    else
      @bikes << bikes
    end
    bikes
	end

  private

  attr_reader :bikes

  def full?
      @bikes.count >= @capacity
  end

  def empty?
      @bikes.empty?
  end

end
