require "docking_station"
require "bike"

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it { is_expected.to respond_to(:dock).with(1).argument }



  it 'is working' do
    bike = Bike.new
    expect(bike.working?).to be true
  end

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    bike_array = []
    bike_array << bike
    expect(subject.dock(bike_array)).to eq bike_array
  end

  describe '#release_bike' do

  	it 'raises an error when there are no bikes available' do
  		expect {subject.release_bike}.to raise_error 'No bikes available'
  	end

  	it 'raises an error when full' do
  		20.times { subject.dock Bike.new }
  		expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end
end
