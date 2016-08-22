require_relative("../lib/fizz_buzz_scenarios.rb")

RSpec.describe FizzBuzzer do 
	describe "fizz_buzz" do
		it "takes a number and returns that number" do 
			the_fizzbuzzer = FizzBuzzer.new
			expect(the_fizzbuzzer.fizz_buzz(7)).to eq("7")

			expect(the_fizzbuzzer.fizz_buzz(11)).to eq("11")
		end
		 
		 it "if a number is a multiple of 3 return the string Fizz" do
		 	the_fizzbuzzer = FizzBuzzer.new
		 	expect(the_fizzbuzzer.fizz_buzz(9)).to eq("Fizz")

		 	expect(the_fizzbuzzer.fizz_buzz(12)).to eq("Fizz")
		 end

		it "if a number is a multiple of 5 return the string Buzz" do
		 	the_fizzbuzzer = FizzBuzzer.new
		 	expect(the_fizzbuzzer.fizz_buzz(10)).to eq("Buzz")

		 	expect(the_fizzbuzzer.fizz_buzz(25)).to eq("Buzz")
		 end

		 it "if a number is a multiple of 5 and 3 return the string FizzBuzz" do
		 	the_fizzbuzzer = FizzBuzzer.new
		 	expect(the_fizzbuzzer.fizz_buzz(15)).to eq("FizzBuzz")

		 	expect(the_fizzbuzzer.fizz_buzz(30)).to eq("FizzBuzz")
		 end
	end
	

end


