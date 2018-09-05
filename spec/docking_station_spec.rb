
require "docking_station"

describe DockingStation do

  it 'responds to calling "release_bike"' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'responds to calling "dock_bike"' do
    expect(subject).to respond_to(:dock_bike).with(1).argument
  end

  it 'responds to calling bike_list' do
    expect(subject).to respond_to(:bike_id)
  end

describe "release_bike" do

    it "returns a Bike object in a working? state." do
      expect(subject.release_bike.working?).to eq true
    end

  end

  describe "dock_bike(bike)" do

    it "docks a bike" do
    bike = Bike.new
      expect(subject.dock_bike(bike)).to eq(bike)
    end
  end

  describe "bike_id" do

    it "returns list of bikes stored" do
    bike = Bike.new
    subject.dock_bike(bike)
      expect(subject.bike_id).to eq(bike)
    end
  end
    
end
