require 'docking_station'
require 'receipt'

class FakeWorkingBike
  def working?
    true
  end
end

class FakeBrokenBike
  def working?
    false
  end
end

describe DockingStation do
  describe '#working_bike_count' do
    context '1 working bike' do
      it "returns 1" do
        bikes = []
        bikes << FakeWorkingBike.new
        docking_station = DockingStation.new(bikes, Receipt)
        expect(docking_station.working_bike_count).to eq(1)
      end
    end

    context '1 working bike, 1 broken bike' do
      it "returns 1" do
        bikes = []
        bikes << FakeWorkingBike.new
        bikes << FakeBrokenBike.new
        docking_station = DockingStation.new(bikes, Receipt)
        expect(docking_station.working_bike_count).to eq(1)
      end
    end
  end

  describe '#random_bike_working?' do
    context 'random bike is working' do
      xit 'returns true' do
        working_bike = FakeWorkingBike.new
        broken_bike = FakeBrokenBike.new
        docking_station = DockingStation.new([working_bike, broken_bike], Receipt)
        expect(docking_station.random_bike_working?).to eq(true)
      end
    end

    context 'random bike is broken' do
      xit 'returns false' do
        working_bike = FakeWorkingBike.new
        broken_bike = FakeBrokenBike.new
        docking_station = DockingStation.new([working_bike, broken_bike], Receipt)
        expect(docking_station.random_bike_working?).to eq(false)
      end
    end
  end

  describe '#print_receipt' do
    xit 'returns expected value' do
      # what should you test?
    end
  end
end
