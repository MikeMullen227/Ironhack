require "sinatra"

get "/" do 
	"hello <a href='/company'> See company page </a>"
end

get "/company" do 
	erb :company
end

get "/about" do
	erb :about
end

get "/home" do
	erb :home
end

get "/pizza" do
	@pizza_ingredients = ["Cheese", "Dough", "Tomato Sauce", "Mushrooms", "Pepperoni", "Pineapple"]
	erb :favorite_pizza
end

users = [
	{:username => "starwars", :name => "Star Wars", :bio => "The official home of Star Wars on twitter", :avatar => "/https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fcdn.wonderfulengineering.com%2Fwp-content%2Fuploads%2F2014%2F09%2Fstar-wars-wallpaper-12.jpg&f=1"},
	{:username => "celinedion", :name => "Celine Dion", :bio => "The official home of Celine Dion on twitter", :avatar =>"https://pbs.twimg.com/profile_images/733642354565996544/JrzvO3Y7_400x400.jpg"},
	{:username => "mikemullen", :name => "Mike Mullen", :bio => "The official home of Mike Mullen on twitter", :avatar => "https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.chicagogluttons.com%2Fwp-content%2Fuploads%2F2014%2F05%2Ffabio-lanzoni-lioncloth.jpg&f=1"},
	
]



get "/users/:username" do
	@user_name_string = params[:username]

	@the_user = users.find { |the_user| the_user[:username] == @user_name_string}


	if @the_user == nil
		erb :no_user
	else
	erb :user_profile
	end
end