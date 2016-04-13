require_relative 'bike'

class DockingStation
  attr_accessor :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
     raise 'Piss off!' if empty?
     raise "It's broken" unless bikes.last.working
     bikes.pop
  end

  def dock(bike)
    raise "I'm all full up!" if full?
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
