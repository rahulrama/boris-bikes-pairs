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
    
end
 
