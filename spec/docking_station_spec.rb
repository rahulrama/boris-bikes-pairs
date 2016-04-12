require 'docking_station'
describe DockingStation do

  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  #it 'releases bike' do
    #bike = Bike.new
    #expect(bike).to be_working
  #end

  #it 'dock something' do
    #bike = Bike.new
    #expect(subject).to respond_to(:dock_bike).with(1).argument
  #end

it 'dock something' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end

  it 'responds to a bike' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bike).to eq bike
  end

describe '#release_bike' do

  it 'raises an error when there are no bikes available' do
      # Let's not dock a bike first:
      # remember subject == DockingStation.new
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
end

describe '#dock_bike' do
  it 'raises an error when there is already a docked bike' do
      expect { subject.dock_bike(Bike.new)}.to raise_error(RuntimeError, 'Dock full')
    end
end

end

