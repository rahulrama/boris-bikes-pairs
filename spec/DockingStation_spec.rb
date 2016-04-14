require 'DockingStation'


describe DockingStation do

        let(:bikedouble) {  double("bike",
                            :working? => true,
                            :broken? => false)  }
        let(:broken_bike) { double("brokenbike",
                            :broken? => true)   }

    it 'should successfully release working bike' do
        subject.dock(bikedouble)
        subject.dock(broken_bike)
        expect(subject.release_bike).to be_working
    end

    it 'should successfully dock a working bike' do
        subject.dock(bikedouble)
        expect(subject.bikes).to eq [bikedouble]
    end

    it 'should successfully dock a broken bike' do
        subject.dock(broken_bike)
        expect(subject.bikes).to include broken_bike
    end

    it 'should raise error if attempting to release bike from empty station' do
        expect{subject.release_bike}.to raise_error 'No bikes available'
    end

    it 'allows 45 bikes to be docked when 45 is the capacity' do
      docking_station = DockingStation.new(45)
      45.times{docking_station.dock(bikedouble)}
      expect(docking_station.bikes.length).to eq 45
    end

    it 'should not release a bike if the bike is broken' do
        subject.dock(broken_bike)
        expect(subject.release_bike).not_to eq broken_bike
    end

    it 'raises an error when exceding DEFAULT_CAPACITY when no custom capacity is given' do
        DockingStation::DEFAULT_CAPACITY.times { subject.dock bikedouble }
        expect { subject.dock bikedouble }.to raise_error 'Dock already full'
    end

    it 'raises an error when exceding Capacity when custom capacity is given' do
        docking_station = DockingStation.new(75)
        75.times{docking_station.dock(bikedouble)}
        expect{docking_station.dock(bikedouble)}.to raise_error 'Dock already full'
    end

    it 'should remove broken bikes when using remove_broken_bikes method' do
      subject.dock(bikedouble)
      subject.dock(broken_bike)
      subject.remove_broken_bikes
      expect(subject.bikes).not_to include broken_bike
    end




end

