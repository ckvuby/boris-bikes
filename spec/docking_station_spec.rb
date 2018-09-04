require "docking_station"

describe DockingStation do
  docking_station = DockingStation.new
  it 'responds to calling "release_bike"' do
    expect(docking_station).to respond_to(:release_bike)
  end
end
