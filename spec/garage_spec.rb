require 'Garage'

describe Garage do
  let(:broken_bikes) {[double(:broken_bike),double(:broken_bike2)] }
  it 'receives bikes' do
    subject.receive_broken(broken_bikes)
    broken_bikes.each do |bike|
      expect(subject.bikes).to include bike
    end
  end

  # it 'repairs broken bikes' do
  #   allow(:broken_bikes).to receive(:broken).and_return(false)
  #   garage = Garage.new
  #   garage.receive_broken(broken_bikes)
  #   garage.fix(broken_bikes)

  #     expect(broken_bikes.broken).to eq false


  end



end