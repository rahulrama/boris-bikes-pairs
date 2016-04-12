require 'docking_station'
require 'Bike'

describe DockingStation do
  let(:bike) { Bike.new }
    let(:ds) { DockingStation.new }


  it { is_expected.to respond_to(:release_bike) }
  #current_bike = bike.release_bike
  # { expect(current_bike).to eq(Bike.new) }

  it 'releases a new bike' do
   expect(ds.release_bike.is_a?(Bike)).to eq true
  end

end

#
# Compared using equal?, which compares object identity,
#       but expected and actual are not the same object. Use
#       `expect(actual).to eq(expected)` if you don't care about
#       object identity in this example.

#  Add a test to your DockingStation specification that a) gets a bike, and then b) expects the bike to be working
