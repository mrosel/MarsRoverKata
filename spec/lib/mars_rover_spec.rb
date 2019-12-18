require '../lib/mars_rover.rb'
require '/Users/myfoulder/Desktop/test-task/MarsRoverKata/spec/spec_helper.rb'

RSpec.describe MarsRover do
  # Checks whether rover create
  it 'should respond to: Rover move forward (North)' do 
    rover = MarsRover.new
    expect(rover).to be_kind_of(MarsRover)
  end
end
