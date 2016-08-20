class White_Pawn
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end 

	def can_move?(final_x, final_y, first_position)
	
		if first_position == true
			  final_y - @y == 1 || final_y - @y == 2
			 


			"yes"
		elsif final_y - @y == 1 && final_x == @x
			"yes"
		else
			
			"no"
		
		end

	end
end