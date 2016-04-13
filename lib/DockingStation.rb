
require_relative 'bike'


class DockingStation
attr_reader :bikes

def initialize
    @bikes = []
  end

def release_bike
     fail 'No bikes available' if empty?
           @bikes.pop
	end

def dock(bike)
	fail "Docking station full " if full?
            @bikes << bike
    end

private

def full?
    if @bikes.count >= 20
 end

def empty?
    if @bikes.empty?
  end

end
