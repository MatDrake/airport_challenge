require 'weather'

describe Weather do

  it 'has a Weather class' do
    expect(subject).to be_a(Weather)
  end

  it 'responds to \'stormy?\' method' do
    expect(subject).to respond_to(:stormy?)
  end

  it 'returns \'true\' when \'stormy?\' is passed a value of 10' do
    allow(subject).to receive(:random_value) { 10 }
    expect(subject.stormy?).to eq(true)
  end

  it "returns 'false' when 'stormy?' is passed values 1-9" do
    allow(subject).to receive(:random_value) { 1 - 9 }
    expect(subject.stormy?).to eq(false)
  end

end