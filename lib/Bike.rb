class Bike
  attr_accessor :working
  def initialize(working = true)
    @working = working
  end

  def report_status(status)
    @working = status
  end


#  def working?
#    @working
#  end


end

#Emma's toggle
  # def docked
  #  !@docked
  #  return_bike(self)
  # end
