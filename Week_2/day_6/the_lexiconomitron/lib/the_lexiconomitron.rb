
class Lexiconomitron
	def initialize()
	
	end



	def eat_t(string)
		string_array = string.split(//)
		string_array.delete_if {|x| x == "t" || x == "T"}
		string_array.join

	
	end

	def shazam(array)
		joined_string = eat_t(array.join(" "))
		string_array = joined_string.split(" ")
		string_array.each_with_index do |i, index|
			string_array[index].reverse!

		end
		return string_array.select {|x| x == string_array[0] || x == string_array[string_array.length - 1]}
		
	end
	
	def oompa_loompa(array)
		first_array = array.delete_if do  |x|
			x.length > 3 
		end
		eat_t(first_array.join(" ")).split(" ")
	end


end






