class Black_Pawn
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end 

	def can_move?(final_x, final_y, first_position)
	
		if first_position == true
			 @y - final_y == 1 || @y - final_y == 2
			"yes"
		elsif @y - final_y == 1 && @x == final_x
			"yes"

		else
			"no"
		
		end

	end
end