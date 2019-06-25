require './lib/docking_station'

describe DockingStation do
  describe 'release bike' do
    it 'release bike' do
      instance = DockingStation.new
      expect(instance).to respond_to(:release_bike)
    end
  end
end
