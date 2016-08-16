class MilkShake
  def initialize
    @base_price = 3
    @ingredients = [ ]    
  end
def price_of_milkshake
  #Let's establish what our counter should be before we start adding ingredients into the mix
  total_price_of_milkshake = @base_price
  #Add each ingredients price to our total
  @ingredients.each do |ingredient|
    total_price_of_milkshake += ingredient.price
  end
  #return  our total price to whoever called for it
   total_price_of_milkshake
end
  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end
end

class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end




class ShakeShop
	def initialize
	@list_of_milkshakes = [ ]
end
def add_milkshakes_to_list(milkshake)
@list_of_milkshakes.push(milkshake)
end
def checkout

total_price_of_milkshake_order = 0
@list_of_milkshakes.each do |one_milkshake|
	total_price_of_milkshake_order += one_milkshake.price_of_milkshake
end
total_price_of_milkshake_order
end
end	


nizars_milkshake = MilkShake.new
mikes_milkshake = MilkShake.new
bibis_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
mikes_milkshake.add_ingredient(banana)
bibis_milkshake.add_ingredient(chocolate_chips)
mikes_order = ShakeShop.new
mikes_order.add_milkshakes_to_list(nizars_milkshake)
mikes_order.add_milkshakes_to_list(mikes_milkshake)
mikes_order.add_milkshakes_to_list(bibis_milkshake)
puts mikes_order.checkout


