class Spaceship
	attr_reader :speed
	attr_accessor :name, :shield, :location

	def initialize(name, speed, shield)
		@name = name
		@speed = speed
		@shield = shield
		@location = "earth"
    @inventory = {}
		
		puts "#{name} has a max speed of #{speed} miles per hour"
	end

  def enable_shield
    @shield = "on"
    puts "Shield is #{@shield}"
  end
  
  def disable_shield
    @shield = "off"
    puts "Shield is #{@shield}"
  end
  
  def warp_to(location)
    puts "Traveling at #{speed} miles per hour to #{location}"
    @location = location
  end
  
  def tractor_beam(item)
    weight = 0
    adding = item.split("")
    adding.each do |i|
      weight = weight + i.ord
    end
    if weight < 500
      disable_shield
      @inventory[item] = @location
      puts "The ship now has #{@inventory}"
      enable_shield
      return true
    else
      puts "Item is too heavy"
      return false
    end
  end
  
  def pick_up(item, dest) 
    warp_to(dest)
    tractor_beam(item)
  end
  
end
# Driver code
spacey1 = Spaceship.new("USS Enterprise", "200,000", "off")
spacey2 = Spaceship.new("HMS Andromeda", "108,277", "on")
puts "\n"

# puts "#{spacey1.name} has a max speed of #{spacey1.speed} miles per hour."
# puts "#{spacey2.name} has a max speed of #{spacey2.speed} miles per hour."

# puts "#{spacey1.name} has its shields #{spacey1.enable_shield}"
# puts "#{spacey2.name} has its shields #{spacey2.disable_shield}"

# spacey1.warp_to("Mars")
# spacey1.warp_to("Venus")

# spacey1.tractor_beam("cow")

spacey2.pick_up("cow", "Santurn")
spacey2.pick_up("sailboat", "Mars")
puts "\n"
spacey1.pick_up("sailboat", "Pluto")
spacey1.pick_up("tree", "Moon")