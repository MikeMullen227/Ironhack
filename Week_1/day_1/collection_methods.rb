
#/------------------Setup----------------/
class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end




	 def print_homes(homes_array)
  homes_array.each do | hm |
    puts "Home: #{hm.name} |  City: #{hm.city} |  Capacity: #{hm.capacity} guests| Price: $#{hm.price}"
   end

  total_price = homes_array.reduce(0.0) do |sum, hm|
  sum + hm.price
  end

  average_price = total_price / homes_array.length

  puts "Average price per night: $#{average_price}"
  end


homes = [
  Home.new("Mike's place", "Miami", 2, 65),
  Home.new("Johns's place", "Chicago", 4, 33),
  Home.new("Lila's place", "New York", 3, 41),
  Home.new("Freddy's place", "Montevideo", 2, 80),
  Home.new("Katie's place", "Detroit", 4, 95),
  Home.new("Chris's place", "Los Angeles", 2, 56),
  Home.new("Fernando's place", "Atlanta", 5, 47),
  Home.new("Jenny's place", "Toronto", 3, 41),
  Home.new("Robert's place", "Vancouver", 2, 45),
  Home.new("Tony's place", "Havana", 4, 49)
]

#/--------------Application Code--------------/



user_input = nil

while user_input != "exit"
  puts ""
  puts "Enter [help] to see available commands or [exit] to exit."
  puts "What is your selection?"
  user_input = gets.chomp

  puts ""

  if user_input == "help"
    puts "Available Commands:"
    puts "[list] to see a list of available homes (sorted lowest to highest)"
    puts "[highest] to see the list of homes sorted from highest price to lowest"
    puts "[capacity] to see the number of guests allowed per home sorted highest to lowest"
    puts "[city] to filter by city name"
    puts "[name] to name your own price"
    
    elsif user_input == "exit"
      puts "Goodbye"


    elsif user_input == "list" 

      sorted_low_to_high = homes.sort do |home_1, home_2|
      home_1.price <=> home_2.price
    end
    

      print_homes (sorted_low_to_high)

    elsif user_input == "highest"
      sorted_high_to_low = homes.sort do |home_1, home_2|
      home_2.price <=> home_1.price
    end

      print_homes (sorted_high_to_low)

    elsif user_input == "capacity"
      capacity = homes.sort do |home_1, home_2|
      home_1.capacity <=> home_2.capacity
    end

      print_homes (capacity)

    elsif user_input == "city"
      puts "Enter the city name"
      user_city = gets.chomp.downcase

      puts ""
    
      city_homes = homes.select do |hm|
      hm.city.downcase == user_city
    end

      print_homes(city_homes)

    elsif user_input == "name"
      puts "Enter your desired price:"
      user_price = gets.chomp.to_f

      puts ""

      matched_home = homes.find do |hm|
  
      hm.price == user_price

    end

      if matched_home == nil
        puts "No homes are available at $#{user_price}"
      else
        matches = [matched_home]
        print_homes(matches)
      end
    else
      puts "I don't understand."

  end

end








