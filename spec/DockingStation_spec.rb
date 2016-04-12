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
end
 
