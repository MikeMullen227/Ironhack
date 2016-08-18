#-----------setup--------------/


#size
#speed
#name








class Car
def initialize(name, speed, sound)
	@name = name
	@speed = speed
	@sound = sound
	@cars_array = []
end


def car_sound
puts "#{@name} is now taking off going at #{@speed}. #{@sound}"
end


def travel_to(cities_name)
	@cars_array.push(cities_name)
end

def cities_visited
	@cars_array
end

end


class StealthShip < Spaceship
	# def initialize(name, speed, size)
	#Call Spaceship's initialize

	# 	super(name, speed, size)

	# 	@stealth = true
	# end

attr_reader(:speed)
# def speed
# 	@speed
# end


attr_writer(:speed)

attr_accessor(:speed) #replaces reader and writer. use all the time

# def speed=(new_speed)
# 	@speed = new speed
# end

	def activate_camouflage
		@stealth = true
	end

	if @stealth ==true
		puts "...."
	else
		puts "Traveling to #{planet_name}"
	end
	@planets_array.push(planet_name)

end


	puts "Stealth Ship"
	the_stealth_ship = StealthShip.new ("Shhhhhhh", "1.0" , "small")

	the_stealth_ship.travel_to("Hoth")


# #Class Method
# def self.star_trek_opening
# 	puts "Space....the final frontier. These are the voyages of the starship Enterprise..."



# /---------Application code ----------/

bumble_bee = Car.new("Bumble Bee", "125mph", "broom")

bumble_bee.car_sound

bumble_bee.travel_to("New York")

p bumble_bee.cities_visited



optimus_prime = Car.new("Optimus Prime", "100mph", "BROOOOOOM")

optimus_prime.car_sound

optimus_prime.travel_to("Chicago")


p optimus_prime.cities_visited

