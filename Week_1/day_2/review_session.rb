sandwiches = ["salmon", "italian", "tuna salad", "mahi", "ham", "croqueta", "cheese steak", "meatball"]


# for i in 0..4
# 	puts sandwiches[i]
# end 
#dont do this 

sandwiches.each do |blah|
	puts blah
end



class Sandwich
	def initialize(name)
		@name = name
		@ingredients = []
	end

	def add_ingredient(the_ingredient)
		@ingredients.push(the_ingredient)
	end


	def buy
		@ingredients.each do |the_ingredient|
			total_calories += the_ingredient.calories
			total_price += the_ingredient.price


			puts "-- Salmon: calo"
		puts "Total calories: 1000"
		puts "Total price: $555"
	end
end

class Ingredient
	attr_reader(:name, :calories, :price)
	def initialize (name, calories, price)
		@name = name
		@calories = calories
		@price = price
	end

end


sandwich_b = Sandwich.new("Turkey")
sandwich_b = 
