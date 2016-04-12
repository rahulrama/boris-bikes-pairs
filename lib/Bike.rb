class Bike

attr_accessor :docked

  def initialize
    @working = true
    @docked = true
  end

  def working?
    @working
  end

  def return_bike(station)
    station.bike_rack += 1
    @docked = true
  end

#Emma's toggle
  # def docked
  #  !@docked
  #  return_bike(self)
  # end




end
