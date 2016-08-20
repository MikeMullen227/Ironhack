class White_Pawn
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end 

	def can_move?(final_x, final_y, first_position)
	
		if first_position = true
			(final_x - @x).abs <= 2
			"yes"
		elsif  (final_x - @x).abs = 1
			"yes"
		else
			"no"
		
		end

	end
end