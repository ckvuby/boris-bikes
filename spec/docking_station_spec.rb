require "docking_station"

describe DockingStation do

  it 'responds to calling "release_bike"' do
    expect(subject).to respond_to(:release_bike)
  end

  describe "release_bike" do

    it "returns a Bike object in a working? state." do
      expect(subject.release_bike.working?).to eq true
    end

  end

end
