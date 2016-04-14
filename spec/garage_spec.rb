require 'Garage'

describe Garage do
  let(:broken_bikes) {[double(:broken_bike1), double(:broken_bike2)]}
  it 'receives bikes' do
    subject.receive_broken(broken_bikes)
    broken_bikes.each do |bike|
      expect(subject.bikes).to include bike
    end
  end
end