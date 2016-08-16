require 'date'

class ShoppingCart
  def initialize
    @items = []
  end
  def add_item(item)
  	@items << item
  end
  def checkout
  	total_price = 0 
  	@items.each do |one_item|
  		total_price +=one_item.price
  	end
  	if @items.length > 5 
  		total_price = total_price * 0.90
  	puts "Your total today is $#{total_price}. Have a nice day! "
  else
  	puts "Your total today is $#{total_price}. Have a nice day! "
  end
  end
end


class Item 
  def initialize(name, price)
      @name = name
      @price = price
  end

  def price
 	@price
  end
  
end

class Houseware < Item
  def price
     if @price > 100
     	@price * 0.95
     else
	    @price
     end
     
  end
end


	
class Fruit < Item
  def price
  	if Date.today.saturday? || Date.today.sunday?
		@price * 0.90
	else
		@price	
    end
  end
end



mikes_cart = ShoppingCart.new
banana = Fruit.new("Banana", 10)
orange_juice = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacuum Cleaner", 150)
anchovies = Item.new("Anchovies", 2)
mikes_cart.add_item(banana)
mikes_cart.add_item(orange_juice)
mikes_cart.add_item(anchovies)
mikes_cart.add_item(vacuum_cleaner)
mikes_cart.add_item(rice)
mikes_cart.checkout

