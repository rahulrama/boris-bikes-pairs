require 'DockingStation'

require 'bike'

describe DockingStation do
    it 'responds to release_bike' do
        expect(DockingStation.new).to respond_to 'release_bike'
    end
    
    it 'expects a bike to be working' do
        expect(DockingStation.new.release_bike).to respond_to :working?
    end
    
    it 'expects working to return true' do
    expect(DockingStation.new.release_bike).to be_working
    
    end
	
    it 'responds to docking' do 
	expect(DockingStation.new).to respond_to 'dock'
    end 

    it 'expects a bike to be docked' do
	bike = Bike.new
	expect(DockingStation.new.dock(bike)).to eq bike
    end

    it 'respond to bike' do
      expect(DockingStation.new).to respond_to :bike 
    end

   it 'contains bike' do
	bike = Bike.new
	station = DockingStation.new
	station.dock(bike)
	expect(station.bike).to eq bike
end
   # Our original test which passed
   it 'returns error if dockingstation has already given out the bike' do
   station = DockingStation.new
   station.release_bike
   expect{station.release_bike}.to raise_error
   end
   # Maker's walkthrough test gave error when bike.working
   # describe '#release_bike' do
   #   it 'raises an error when there are no bikes available' do
           # Let's not dock a bike first:
           # remember subject == DockingStation.new
           #       expect { subject.release_bike }.to raise_error 'No bikes available'
           # end
           #end
end
 
