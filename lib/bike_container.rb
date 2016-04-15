module BikeContainer



DEFAULT_CAPACITY = 20

attr_reader :capacity

def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
end

def accept(bike)
  bike
end




end












class BikeContainer_class
include BikeContainer
end
