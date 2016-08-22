class FizzBuzzer
	

	def fizz_buzz(number)
	
		if number % 3 == 0 && number % 5 == 0
			return "FizzBuzz"
		elsif number % 3 == 0
			return "Fizz"
		elsif number % 5 == 0
			return "Buzz"
		
		else
			number.to_s
		end 

	end
end