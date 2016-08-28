
require 'imdb'

class Movies
	attr_accessor(:movies)
	def initialize
		@movies = []
		@movie_posters = []
	end

	def add_movie(the_movie)
		@movies.push(the_movie)
	end

	def search_movies(the_movie)
		the_search = Imdb::Search.new(the_movie)	
		@movies = the_search.movies.first(15)
		@movies.each do |movie|
			if movie.poster
			    @movie_posters.push(movie)
			end
	end
		@movie_posters.first(9)

	end

	def movie_year(the_movie)
		@random_movie = search_movies(the_movie).sample
		@random_movie_year = random_movie.year
	end

	
end