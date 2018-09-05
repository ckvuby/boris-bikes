require_relative "./bike.rb"

class DockingStation
  attr_reader :bike_id
  def release_bike
    Bike.new
  end

  def dock_bike(bike)
     @bike_id = bike
  end

  # def bike_list
  #   @bike
  # end

end
