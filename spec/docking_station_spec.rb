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

  it 'returns the bike' do
  (expect(ds.return_bike(bike)).to eq bike)
  end

  it 'expects an error when docking_station tries to instantiate a new bike if there are 0 bikes in the dock' do
      expect { ds.release_bike }.to raise_exception if ds.bike_rack == 0
  end


  #bike boolean instance variable 'docked' = true
  #We will expect dockingstation instance variable 'bike_rack'.length to = bike_rack.length+1



end


#As a member of the public
#So I can return bikes I've hired
#I want to dock my bike at the docking station
