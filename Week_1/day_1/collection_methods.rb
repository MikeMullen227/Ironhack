# class Home
#   attr_reader(:name, :city, :capacity, :price)

#   def initialize(name, city, capacity, price)
#     @name = name
#     @city = city
#     @capacity = capacity
#     @price = price
#   end
# end


# homes = [
#   Home.new("Nizar's place", "San Juan", 2, 42),
#   Home.new("Fernando's place", "Seville", 5, 47),
#   Home.new("Josh's place", "Pittsburgh", 3, 41),
#   Home.new("Gonzalo's place", "Málaga", 2, 45),
#   Home.new("Ariel's place", "San Juan", 4, 49)
# ]


# for pos in 0..100
#   puts homes[pos].name
# end


# homes.each do |hm|
#   puts hm.name
# end

# hm = Home.new("Nizar's place", "San Juan", 2, 42)

# puts hm.name


##exercise: each

# homes.each do |hm|
#   puts "#{hm.name} in #{hm.city} \n Price: $ #{hm.price} a night"
# end

# # Create an empty array
# cities = []

# # Push each home's city into the array
# homes.each do |hm|
#   cities.push(hm.city)
# end

# puts cities



# cities = homes.map do |hm|
#   hm.city
# end

# puts cities


##exercise: map

# prices = homes.map do |hm|
# 	hm.price
# end

# puts prices

# prices = homes.map do |pr|
# 	pr.price
# end



# total_price = 0.0

# prices.each do |x|
# 	total += x
# end
	
# 	puts avg_prices = total_price / prices.size

##exercise: reduce

# total_price = homes.reduce(0.0) do |sum, pr|
# 	sum + pr.price
# end
# puts total_price / homes.length

# homes.each_with_index do |hm, index|
#   puts "Home Number #{index + 1}: #{hm.name}"
# end

class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Mike's place", "Miami", 2, 65),
  Home.new("Johns's place", "Chicago", 4, 47),
  Home.new("Lila's place", "New York", 3, 41),
  Home.new("Freddy's place", "Montevideo", 2, 45),
  Home.new("Katie's place", "Detroit", 4, 49),
  Home.new("Chris's place", "Los Angles", 2, 42),
  Home.new("Fernando's place", "Atlanta", 5, 47),
  Home.new("Jenny's place", "Toronto", 3, 41),
  Home.new("Robert's place", "Vancouver", 2, 45),
  Home.new("Tony's place", "Havana", 4, 49)
]


	 def textbnb(array)
  array.each do | home |
    puts "Home: #{home.name} |  City: #{home.city} |  Capacity: #{home.capacity} | Type: #{home.price}"
  end
end


puts "Would you like to sort from highest price to lowest?"
price = gets.chomp
if true

sorted = homes.sort do |home1, home2|
  
  home1.price <=> home2.price
end

else

sorted = homes.sort do |home1, home2|
  
  home2.price <=> home1.price
end




textbnb(sorted)
