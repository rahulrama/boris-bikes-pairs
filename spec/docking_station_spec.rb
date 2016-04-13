require 'docking_station'
require 'bike'

describe DockingStation do
  let(:bike) { Bike.new }
    let(:ds) { DockingStation.new }


  it { is_expected.to respond_to(:release_bike) }
  #current_bike = bike.release_bike
  # { expect(current_bike).to eq(Bike.new) }

  it 'releases a new bike that is also working' do
   ds.bikes << Bike.new
   (expect(ds.release_bike.class).to eq Bike)
   ds.bikes << Bike.new
   (expect(ds.release_bike.working?).to eq true)
  end

  it '#returns the bike' do
  (expect(ds.dock(bike)).to eq ds.bikes)
  end

  it 'expects an error when docking_station tries to instantiate a new bike if there are 0 bikes in the dock' do
      expect { ds.release_bike }.to raise_exception if ds.bikes.empty?
  end

  it 'expects an error when dock tries to add a bike when subject bike_rack is greater than 20' do
      expect { ds.dock }.to raise_exception if ds.bikes.count >= 20
  end

  it 'raises an error when full' do
   20.times { subject.dock Bike.new }
   expect { subject.dock Bike.new }.to raise_exception if ds.bikes.count >= 20
 end

end


#As a member of the public
#So I can return bikes I've hired
#I want to dock my bike at the docking station
