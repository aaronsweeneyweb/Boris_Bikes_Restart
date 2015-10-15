require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise StandardError, 'no bikes available' unless @bikes.count > 0
    @bikes.pop
  end

  def dock_bike(bike)
    raise StandardError, 'docking station is full' unless @bikes.count < 20
    @bikes.push bike
  end

  def show_bike
    @bikes.last
  end
end
