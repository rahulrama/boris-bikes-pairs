class Garage
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def receive_broken(broken_bikes)
    @bikes += broken_bikes
  end
end