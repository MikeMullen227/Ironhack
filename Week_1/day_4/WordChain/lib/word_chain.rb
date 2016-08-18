class WordChain
    def initialize(dictionary)
        @dictionary = dictionary
    end

    def find_chain(first_word, second_word)
		# first_word_array = first_word.split("")
	 #    second_word_array = second_word.split("")
	 
	 # 		pat = ""
		# if first_word[0] != second_word[0]
		# 	pat = first_word.sub(first_word[0], second_word[0])
		# 	 @dictionary.exists?(pat)
		# 	 p first_word
		# 	 p pat

		# 	if pat[1] != second_word[1]
		# 		pit = pat.sub(pat[1], second_word[1])
		# 	@dictionary.exists?(pit)
		# 	p pit
		# 	end

		# 	if pit[2] != second_word[2]
		# 		pig = pit.sub(pat[2], second_word[2])
		# 	 @dictionary.exists?(pig)
		# 	end
				index = 0
				current_word = first_word
				puts first_word
			while index < current_word.length
				# while index == current_word.length

				if current_word[index] != second_word[index]
					
					
					possible_word = current_word.sub(current_word[index], second_word[index])

					if @dictionary.exists?(possible_word)
						current_word = possible_word
						puts current_word
					end	
				end

				index += 1

				if index == current_word.length
					index = 0
				end

				break if current_word == second_word
			end


	end



		
	



end



# cat
# cot
# cog
# dog

