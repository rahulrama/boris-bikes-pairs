require "docking_station"
require "bike"

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it { is_expected.to respond_to(:dock).with(1).argument }

  let(:test_bike) {double(:bike, broken?: true, working?: true)}  

  it "it has a default capacity" do
     expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
   end

# dependancy
  it 'docks something' do 
    expect(subject.dock(test_bike)).to eq test_bike
  end
# dependancy
  it "returns docked bikes" do
    
    #bike_array = []
    #bike_array << bike
    expect(subject.dock(test_bike)).to eq test_bike
  end

  describe '#release_bike' do
# dependancy
      it 'is working' do  
    expect(test_bike.working?).to be true
  end

  	it 'raises an error when there are no bikes available' do
  		expect {subject.release_bike}.to raise_error 'No bikes available'
  	end
# dependancy
  	it 'raises an error when full' do
      subject { DockingStation.new}
      subject.capacity.times { subject.dock test_bike }
      expect { subject.dock test_bike}.to raise_error 'Docking station full' 
    end
  end

      describe 'initialization' do
      it 'has a variable capacity' do
        docking_station = DockingStation.new(50)

        50.times { docking_station.dock test_bike}
        expect {docking_station.dock test_bike}.to raise_error 'Docking station full'
      end

        subject { DockingStation.new}
        # dependancy
        it "defaults capacity" do
          described_class::DEFAULT_CAPACITY.times do
            subject.dock(test_bike)
        end
        expect { subject.dock(test_bike)}.to raise_error 'Docking station full'
    end
  end
end
