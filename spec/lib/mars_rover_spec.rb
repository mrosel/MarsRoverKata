require '/Users/myfoulder/Desktop/test-task/MarsRoverKata/lib/mars_rover.rb'
require '/Users/myfoulder/Desktop/test-task/MarsRoverKata/spec/spec_helper.rb'

RSpec.describe MarsRover do
  # Checks whether MarsRover create
  it 'should respond to: Rover move forward (North)' do 
    rover = MarsRover.new
    expect(rover).to be_kind_of(MarsRover)
  end

#Checkes whether a rover class responds to the rover move
  it 'rovers' do
    rover = MarsRover.new
    expect(rover).to respond_to(:move)
  end
end
