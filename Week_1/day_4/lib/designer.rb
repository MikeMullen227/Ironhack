class Designer
	include Payable
	include Caffeine_consumer

	def initialize(name)
		@name = name
	end

	def design_things
		select_typography
		select_colors
		
	end

	def select_typography
		puts "Bold fonts are my favorite."
	end

	def select_colors
		puts " Blues and Greens looks the best."
	end
end
