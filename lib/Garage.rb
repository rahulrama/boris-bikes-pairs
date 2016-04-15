class Garage
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def receive_broken(broken_bikes)
    @bikes += broken_bikes
  end

  def fix(broken_bikes)
    broken_bikes.each do |bike|
    bike.broken = false
    #bike.working? = true
  end
  end
end