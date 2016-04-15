require 'bike_container'



shared_examples_for "shared behaviors" do
  let (:bike) { double (:bike)}
  it "has a default capacity unless specified" do
    expect(subject.capacity).to eq BikeContainer::DEFAULT_CAPACITY
    end

  it "accepts a bike" do
    expect(subject.accept(bike)).to eq bike
  end

  it "releases a bike" do
    subject.accept(bike)
    expect(subject.release(bike)).to eq bike
  end

  it "raises an error when full" do
     subject.capacity.times{subject.accept(bike)}
     expect{subject.accept(bike)}.to raise_error "#{subject.class} is already full"
   end


end



describe BikeContainer_class do
   it_behaves_like "shared behaviors"
end
