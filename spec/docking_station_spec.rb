require "docking_station"
require "bike"

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it { is_expected.to respond_to(:dock).with(1).argument }

  let(:bike) {double(:bike)} 

  it "it has a default capacity" do
     expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
   end

# dependancy
  it 'docks something' do 
    expect(subject.dock(bike)).to eq bike
  end
# dependancy
  it "returns docked bikes" do
    subject.dock(bike)
    bike_array = []
    bike_array << bike
    expect(subject.bikes).to eq bike_array
  end

  describe '#release_bike' do
# dependancy
      it 'is working' do
    expect(bike.working?).to be true
  end

  	it 'raises an error when there are no bikes available' do
  		expect {subject.release_bike}.to raise_error 'No bikes available'
  	end
# dependancy
  	it 'raises an error when full' do
  		subject.capacity.times { subject.dock bike }
  		expect { subject.dock bike}.to raise_error 'Docking station full'
    end
  end

      describe 'initialization' do
      it 'has a variable capacity' do
        # dependancy
        docking_station = DockingStation.new(50)
        50.times { docking_station.dock bike}
        expect {docking_station.dock bike}.to raise_error "Docking station full"
      end

        subject { DockingStation.new}
        # dependancy
        it "defaults capacity" do
          described_class::DEFAULT_CAPACITY.times do
            subject.dock(bike)
        end
        expect { subject.dock(bike)}.to raise_error 'Docking station full'
    end
  end
end
