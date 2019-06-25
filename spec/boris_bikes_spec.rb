require 'boris_bikes'

describe DockingStation do
  describe 'docking_station' do
    it 'responds to release_bike' do
      instance = DockingStation.new
      expect(instance).to respond_to(:release_bike)
    end
  end
  describe 'release_bike' do
    it 'returns new bike' do
      instance = DockingStation.new
      expect(instance.release_bike).to be_a(Bike)
    end
  end
end
