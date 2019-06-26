require 'docking_station'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  describe '#release_bike' do
     it 'releases a bike' do
       bike = Bike.new
       subject.dock(bike)
       # we want to release the bike we docked
       expect(subject.release_bike).to eq bike
     end
end

describe '#release_bike' do
   it 'raises an error when there are no bikes available' do
     expect { subject.release_bike }.to raise_error 'No bikes available'
   end
 end

  it {is_expected.to respond_to(:dock).with(1).argument}

  it {is_expected.to respond_to(:bike)}

  it "dock something" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

end
