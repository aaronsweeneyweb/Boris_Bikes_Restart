require 'docking_station'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end
  it 'returns a working bike' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.release_bike).to be_working
  end
  it 'responds to dock_bike' do
    expect(subject).to respond_to(:dock_bike).with(1).argument
  end
  it 'responds to show_bike' do
    expect(subject).to respond_to(:show_bike)
  end
  it 'shows a bike' do
    b1 = Bike.new
    subject.dock_bike(b1)
    expect(subject.show_bike).to eq b1
  end
  it 'raises error when no bikes available' do
    expect { subject.release_bike }.to raise_error 'no bikes available'
  end
  it 'raises error when docking_station is full' do
    b1 = Bike.new
    20.times { subject.dock_bike(b1) }
    expect {subject.dock_bike(Bike.new)}.to raise_error 'docking station is full'
  end
end
