require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

   describe '#release_bike' do
     it 'raises an error if there is no bike' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
      end
     end


   it 'releases a bike' do
     bike = Bike.new
     subject.dock(bike)
     expect(subject.release_bike).to eq bike
   end

     it 'releases a working bike' do
       bike = Bike.new
       subject.dock(bike)
      # bike = subject.release_bike
    #   expect(bike).to be_working
       expect(subject.release_bike).to be_working
      end


  it { is_expected.to respond_to(:dock).with(1).argument }

  describe '#dock' do
    it 'raises an error if there is already a bike docked' do
     # bike = Bike.new
      #bike2 = Bike.new
      #subject.dock(bike)
      #expect { subject.dock(bike2) }.to raise_error 'Bike already docked!'
      DockingStation::DEFAULT_CAPACITY.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end

  it 'docks bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to eq bike
  end

  it { is_expected.to respond_to(:bikes) }



end
