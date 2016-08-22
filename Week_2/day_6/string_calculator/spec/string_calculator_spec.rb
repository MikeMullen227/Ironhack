require_relative("../lib/string_calculator.rb")

RSpec.describe String_calculator do 
	describe "add method" do
		it "returns the addition of 2 numbers in a string" do 
			the_calculator = String_calculator.new
			expect( the_calculator.add("7, 7")).to eq(14)

			expect( the_calculator.add("8, 4")).to eq(12)
		end
		 it "when a just a single number returns that number" do
			the_calculator = String_calculator.new
			expect( the_calculator.add("6")).to eq(6)

			expect( the_calculator.add("3")).to eq(3)
		end
	
	
		it "should return 0 for an empty string" do
			the_calculator = String_calculator.new
			expect( the_calculator.add("")).to eq(0)
		end
	end
	

end