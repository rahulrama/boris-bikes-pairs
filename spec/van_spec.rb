require 'Van'

describe Van do

  let(:workingbike){double("workingbike", :broken? => false)}
  let(:brokenbike){double("brokenbike", :broken? => true)}
  let(:station){double("station", :bikes => [workingbike, brokenbike], :remove_broken_bikes => [workingbike] )}
  let(:garage){double("garage")}

  it 'should store broken bikes from station' do
    subject.collect_broken(station)
    expect(subject.bikes).to eq [brokenbike]
  end

  it 'should remove broken bikes from the station' do
    expect(station).to receive(:remove_broken_bikes)
    subject.collect_broken(station)
  end

  it 'should empty itself of bikes when it delivers to a garage' do
    subject.collect_broken(station)
    subject.deliver_broken(garage)
    expect(subject.bikes.length).to eq 0
  end

end