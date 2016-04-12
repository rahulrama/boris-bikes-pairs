require 'docking_station'
require 'bike'

describe DockingStation do
  let(:bike) { Bike.new }
    let(:ds) { DockingStation.new }


  it { is_expected.to respond_to(:release_bike) }
  #current_bike = bike.release_bike
  # { expect(current_bike).to eq(Bike.new) }

  it 'releases a new bike' do
   expect(ds.release_bike.is_a?(Bike)).to eq true

end

  it 'releases a working bike' do
    expect(ds.release_bike.working?).to eq true

  end

end
