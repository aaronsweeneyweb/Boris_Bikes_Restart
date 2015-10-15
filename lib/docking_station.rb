require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise StandardError, 'no bikes available' unless !empty?
    @bikes.pop
  end

  def dock_bike(bike)
    raise StandardError, 'docking station is full' unless !full?
    @bikes.push bike
  end

  def show_bike
    @bikes.last
  end

  private

  def full?
  @bikes.count < DEFAULT_CAPACITY ? false : true
  end

  def empty?
  @bikes.count == 0 #then returns true
  end

end
