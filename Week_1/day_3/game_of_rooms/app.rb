
# -prompt user for movement commands between rooms

# -rooms can have their own special action commands to trigger special behavior

# -5 spaces - each can have more than one exit/entry

# - tell user description, tell user where the door is, ask user if they want to pick up item

	# tell user therer is no exit in other directions	


#


class Game
	def initialize 


directions = [N, S, E, W]



class Room
	def initialize (exit_location, description, message, item)
		@exit_location = exit_location
		@description = description
		@message = message
		@item = item
	end


def prompt
puts "#{@exit_location}, #{@description}, #{@item}"
end







bedroom = Room.new("There is a door to the North.", "You are laying on a bed and a fan is blowing.", "There is no exit.", "You see a glass of Water")
living_room = Room.new("There is a door to the East.", "You see a table and chairs.", "There is no exit.", "You see a book.")
library= Room.new("There is a door to North.", "You see shelves full of books.", "There is no exit.", "You see a gun.")
kitchen = Room.new("There is a door to the west.", "Pots and pans are all around.", "There is no exit.", "You see a rose.")
yard = Room.new("There are no doors.", "You are in the Yard.", "There is no exit.", "You see an old woman before you.")