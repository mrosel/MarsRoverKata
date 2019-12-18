class MarsRover
  def initialize
    @x = 0
    @y = 0
    @maps_width = 10
    @maps_heigth = 10
  end

  def update_location_y(y)
    @y = y
  end

  def update_location_x(x)
    @x = x
  end

  def message_end_of_map 
    puts "You have reached the limit of the map, you will be transferred to the beginning."
  end


  def check_end_of_map
    if @y == @maps_heigth
      @y = 0
      message_end_of_map
    elsif @x == @maps_width
      @x = 0
      message_end_of_map
    else
    end
  end

  def move(direction = [])
    i = 0
    if direction.length > 0
      
      direction.each {|x|
        x = x.downcase
        if x == "f" || x == "n"
          puts "Rover move forward (North)"
          @y += 1
          update_location_y(@y)
          check_end_of_map
          
        elsif x == "b"  || x == "s"
          puts "Rover move backward (South)"
          @y -= 1
          update_location_y(@y)
          check_end_of_map
          
        elsif x == "r" || x == "e"
          puts "Rover move to right (East)"
          @x += 1
          update_location_x(@x)
          check_end_of_map
          
        elsif x == "l" || x == "w"
          @x -= 1
          puts "Rover move to left (West)"
          update_location_x(@x)
          check_end_of_map
          
        else
          raise "Sorry, don't understand command #{x} Please use the following letters N,S,E,W or F,B,R,L to move the Rover"
        end
        i += 1
        if i == direction.length
          puts "-------"
          puts "Current location #{i} is x:#{@x}, y:#{@y}"
        end
      }
    else
      puts "Please, pass value to array"
    end
  end
end


w = MarsRover.new
w.move(["N", "N", "N", "E", "N", "N", "e"])