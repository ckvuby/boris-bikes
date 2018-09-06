require_relative "./bike.rb"

class DockingStation
  attr_reader :bike_list


  def initialize
    @bike_list = []
  end

  def release_bike
    if @bike_list.empty?
      raise "Sorry, I have no bikes"
    end
    @bike_list[0]
  end

  def dock_bike(bike)
    if @bike_list.count < 20
      @bike_list.push(bike)
    else
      raise "Sorry, I'm full"
    end
  end

end
