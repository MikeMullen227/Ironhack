class Programmer
	include Payable
	include Caffeine_consumer

	def initialize(name)
		@name = name
	end

	def program
		recieve_salary
		drink_caffeine
		do_wonderful_things_with_computer

	end

	def do_wonderful_things_with_computer
		puts "I can code!"
	end

end
