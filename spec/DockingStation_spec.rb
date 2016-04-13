require 'DockingStation'

require 'bike'

describe DockingStation do
    it 'responds to release_bike' do
        expect(DockingStation.new).to respond_to 'release_bike'
    end
    
    #Removing the respond_to rspec tests to clean-up (syntactic sugar)
    #it 'expects a bike to be working' do
    #  expect(DockingStation.new.release_bike).to respond_to :working?
    #end
    
    it 'expects working to return true' do
        bike = Bike.new
        subject.dock(bike)
    expect(subject.release_bike).to be_working
    
    end
	
#    it 'responds to docking' do 
#	expect(DockingStation.new).to respond_to 'dock'
 #   end 

    it 'expects a bike to be docked' do
       bikes = Bike.new
	expect(DockingStation.new.dock(bikes)).to eq [bikes]
    end

  #  it 'respond to bike' do
   #   expect(DockingStation.new).to respond_to :bike 
   # end

   it 'contains bike' do
	bikes = Bike.new
	station = DockingStation.new
	station.dock(bikes)
	expect(station.bikes).to eq [bikes]
   end

   # Our original test which passed
   it 'returns error if dockingstation has already given out the bike' do
   station = DockingStation.new
   expect{station.release_bike}.to raise_error 'No bikes available'
   end
   # Maker's walkthrough test gave error when bike.working
   # describe '#release_bike' do
   #   it 'raises an error when there are no bikes available' do
           # Let's not dock a bike first:
           # remember subject == DockingStation.new
           #       expect { subject.release_bike }.to raise_error 'No bikes available'
           # end
           #end

#Our original test passed - not as legible as Makers'
#it 'returns error if docking station already has a bike' do
#  station = DockingStation.new
#  bike = Bike.new
#  bike2 = Bike.new
#  station.dock(bike)
#  expect{station.dock(bike2)}.to raise_error 'Dock already full'
# end

#Makers walkthrough test 
#describe '#dock' do
 #   it 'raises an error when full' do
  #    subject.dock(Bike.new)
   #   expect { subject.dock Bike.new }.to raise_error 'Docking station full'
   # end
 # end

   describe '#dock' do
       it 'raises an error when exceding DEFAULT_CAPACITY' do
           DockingStation::DEFAULT_CAPACITY.times { subject.dock Bike.new }
           expect { subject.dock Bike.new }.to raise_error 'Dock already full'
           end
       end

end
 
