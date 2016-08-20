class Queen
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end 

	def can_move?(final_x, final_y)
	


		# if (final_x - @x) == 0 || (final_y - @y) == 0
		if  (@x - final_x).abs == (@y - final_y).abs || final_x == @x || final_y == @y
			  # 4     2                      5     6        
			"yes"
		else 
			"no"
		end

	end
end