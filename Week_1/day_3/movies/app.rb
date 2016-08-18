require("imdb")

	movies = []
	
	

	f = File.open("../movies/data.txt", "r")
	f.each do |x|

		movies.push(x)
	end

puts movies
	
	rating = 10

	
	while rating > 0
		slot = []
		movies.each do |movie|
			
			search = Imdb::Search.new(movie)
			first_result = search.movies[0]
			score = first_result.rating
			if score.round == rating
				slot.push("x")
			else
				slot.push(" ")
			 end
			 print slot
		end
		puts ""	
		j = 1
		movies.each do |movie|
			print " #{j}"
			j +=1 
		end
		puts ""
		puts ""

		i = 1
		movies.each {|movie|}
		puts "#{i}. #{movie}"
		i += 1
		
	end

	




