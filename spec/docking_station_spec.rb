
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

    # it "returns a Bike object in a working? state." do
    #   expect(subject.release_bike.working?).to eq true
    # end

    it "returns an error when it's empty and someone wants a bike" do
        expect{subject.release_bike}.to raise_error("Sorry, I have no bikes")
    end

end

  describe "dock_bike(bike)" do

    it "docks a bike" do
    bike = Bike.new
      expect(subject.dock_bike(bike)).to eq(bike)
    end

    it "returns an error when docking station already has a bike and person tries to dock a bike" do
    subject.dock_bike(Bike.new)
      expect{subject.dock_bike(Bike.new)}.to raise_error("Sorry, I'm full")
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
