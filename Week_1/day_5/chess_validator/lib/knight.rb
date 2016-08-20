class Knight
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end 

	def can_move?(final_x, final_y)
	


		# if (final_x - @x) == 0 || (final_y - @y) == 0
		if  (@x - final_x).abs == 2 && (@y - final_y).abs == 1 || ((@x - final_x).abs == 1 && (@y - final_y).abs ==	2)
			  # 4     2                      5     6        
			"yes"
		else 
			"no"
		end

	end
end