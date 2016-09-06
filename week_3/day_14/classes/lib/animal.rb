class Animal
	def initialize(name, noise)
		@noise = noise
		@name = name
	end

	def make_noise
		puts "#{@name} says: #{@noise}"
	end

	def shout
		puts @noise.upcase
	end
end