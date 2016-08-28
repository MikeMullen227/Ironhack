require "sinatra"
require "artii"


get "/" do
	"hello <a href ='/ascii'> See ascii page </a>"
	end

get "/ascii" do
	erb :ascii
end

get "/word" do
	erb :word
end




#get "ascii/:word/?:optional_font?" do


get "/ascii/:word" do
	@user_word = params[:word]
	the_ascifier = Artii::Base.new(:font => "doh")

	@ascii = the_ascifier.asciify(@user_word)
	erb :ascii
end