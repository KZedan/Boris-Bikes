require './lib/bike'

describe DockingStation do
  describe 'docking_station' do
    it 'responds to release_bike' do
      instance = DockingStation.new
      expect(instance).to respond_to(:release_bike)
    end
  end
  describe 'release_bike' do
    it 'returns new bike' do
      expect(release_bike).to eq Bike.new
    end
  end
end
