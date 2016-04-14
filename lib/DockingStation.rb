
require_relative 'bike'


class DockingStation

  attr_reader :bikes


DEFAULT_CAPACITY = 20

def initialize(num=DEFAULT_CAPACITY)
    @bikes = []
    @Capacity = num
  end

def release_bike
     fail 'No bikes available' if empty?
           @bikes.pop
	end

def dock(bike)
	fail "Dock already full" if full?
            @bikes << bike
    end

private



def full?
    @bikes.count >= @Capacity
 end

def empty?
    @bikes.empty?
  end

end
