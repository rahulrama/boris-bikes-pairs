require_relative 'bike'

class DockingStation
  attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def release_bike
     raise StandardError, 'Piss off!' if empty?
     @bikes.pop
  end

  def dock(bike)
    raise StandardError, "I'm all full up!" if full? #@bikes.count >= 20
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end

end





# Emma's bike return system
# def return_bike(bike_object)
#   @bike_rack << bike_object
# end
