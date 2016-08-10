def solve_cipher(input)
	shift = -3
  letters_array = input.split("")
  ordinals_array = []
  shift = shift * -1
  letters_array.each do |x|
	
	if x.downcase.ord - shift < 97 
		ordinals_array<< x.ord - shift + 26
		else
		ordinals_array<< x.ord - shift
		
	end
  	 end
  	 final_array = []
  	 ordinals_array.each do |x|
  	 	final_array << x.chr
  	 end
  	 
  	 
  	 p final_array.join.gsub(/7/, ' ')
  	 
  	
end
solve_cipher("p| uhdo qdph lv grqdog gxfn")

