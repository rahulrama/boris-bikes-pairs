require 'bike_container'

class BikeContainerTest
include BikeContainer
end


shared_examples_for "shared behaviors" do
  let (:bike) { double (:bike)}
  it "has a default capacity unless specified" do
    expect(subject.capacity).to eq BikeContainer::DEFAULT_CAPACITY
    end

  it "accepts a bike" do
    expect(subject.accept(bike)).to eq bike
    # expect(subject).not_to be_empty
  end

  it "releases a bike" do
    subject.accept(bike)
    expect(subject.release(bike)).to eq bike
  end

  it "raises an error when full" do
     subject.capacity.times{subject.accept(bike)}
     expect{subject.accept(bike)}.to raise_error "#{subject.class} is already full"
   end

   it "raises an error when empty" do
      expect{subject.release(bike)}.to raise_error "#{subject.class} is empty"
    end
end



describe BikeContainerTest do
   it_behaves_like "shared behaviors"
end
