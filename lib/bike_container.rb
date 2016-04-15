module BikeContainer



DEFAULT_CAPACITY = 20

attr_reader :capacity, :bikes

def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
end

def accept(bike)
  raise "#{self.class} is already full" if full?
  bikes << bike
  bikes.last
end

def release(bike)
  bikes.pop

end

def full?
    bikes.count >= @capacity
  end

  def empty?
    bikes.empty?
  end



end












class BikeContainer_class
include BikeContainer
end
