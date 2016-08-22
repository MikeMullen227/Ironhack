
require_relative("../lib/the_lexiconomitron.rb")

RSpec.describe Lexiconomitron do
	before :each do 
	 @lexi = Lexiconomitron.new
	end	

	# describe Lexiconomitron do 
		describe "#eat_t" do
		    it "removes every letter t from the input" do
		     	expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
		    end
		describe "shazam" do  	
			it "takes an array of words and reverses the letters within the words and returns only first and last words." do
		      	expect(@lexi.shazam(["This", "is", "a", "boring", "test"])).to eq(["sih", "se"])
		    end
		describe "oompa_loompa" do
			it "takes an array of words and removes any words with a length greater than 3 letters." do
				expect(@lexi.oompa_loompa(["To", "stop", "the", "atoms", "she"])).to eq(["o", "he", "she"])
			end
		end
	end
end


end