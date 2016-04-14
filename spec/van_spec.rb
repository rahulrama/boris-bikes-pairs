require 'Van'

describe Van do
  let(:workingbike){double("workingbike", :broken? => false)}
  let(:brokenbike){double("brokenbike", :broken? => true)}
  let(:station){double("station", :bikes => [workingbike, brokenbike] )}

  it 'should store broken bikes from station' do
    subject.collect_broken(station)
    expect(subject.bikes).to eq [brokenbike]
  end

end