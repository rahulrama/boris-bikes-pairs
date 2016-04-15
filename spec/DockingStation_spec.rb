require 'DockingStation'
require 'bike_container_spec'

describe DockingStation do
    it_behaves_like "shared behaviors"

        let(:bikedouble) {  double("bike",
                            :working? => true,
                            :broken? => false)  }
        let(:broken_bike) { double("brokenbike",
                            :broken? => true,
                            :working? => false)   }

    it 'should successfully release working bike' do
        subject.dock(bikedouble)
        subject.dock(broken_bike)
        expect(subject.release_bike).to be_working
    end


    it 'should not release a bike if the bike is broken' do
        subject.dock(broken_bike)
        expect(subject.release_bike).not_to eq broken_bike
    end


    it 'should remove broken bikes when using remove_broken_bikes method' do
      subject.dock(bikedouble)
      subject.dock(broken_bike)
      subject.remove_broken_bikes
      expect(subject.bikes).not_to include broken_bike
    end




end
