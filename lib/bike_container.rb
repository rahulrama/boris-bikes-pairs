module BikeContainer



DEFAULT_CAPACITY = 20

attr_reader :capacity

def initialize

    @capacity = DEFAULT_CAPACITY
end
end


class BikeContainer_class
include BikeContainer

end