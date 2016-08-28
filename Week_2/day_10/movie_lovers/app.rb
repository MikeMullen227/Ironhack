require_relative("lib/movie_class.rb")
require "sinatra"
require "sinatra/reloader" if development?
require "imdb"

the_movies = Movies.new

get "/" do
	erb :home
end


post "/search_results" do 
	the_title = params[:title]
	@movies = the_movies.search_movies(the_title)
	@random_movie = @movies.sample
	@random_movie_year = @random_movie.year
	
	erb :results
end

	