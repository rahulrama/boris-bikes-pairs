require_relative 'bike'

class DockingStation
  attr_accessor :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
     raise StandardError, 'Piss off!' if empty?
     bikes.pop
  end

  def dock(bike)
    raise StandardError, "I'm all full up!" if full?
    bikes << bike
  end

  # def bikes_status
  #   @bikes
  # end

  private

   attr_reader :bikes

  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end

end





# Emma's bike return system
# def return_bike(bike_object)
#   @bike_rack << bike_object
# end
