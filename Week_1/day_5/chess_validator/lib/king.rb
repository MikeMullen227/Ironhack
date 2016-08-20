class King
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end 

	def can_move?(final_x, final_y)
		# if (final_x - @x) == 0 || (final_y - @y) == 0
		if  @x - final_x > 1 || @x - final_x < -1 || @y - final_y > 1 || @y - final_y < -1 
			"no"
		else 
			"yes"
		end

	end
end