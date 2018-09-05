require_relative "./bike.rb"

class DockingStation
  attr_reader :bike_id
  def release_bike
    if @bike_id.nil?
      raise "Sorry, I have no bikes"
    end
    @bike_id
  end

  def dock_bike(bike)
     @bike_id = bike
  end

end
