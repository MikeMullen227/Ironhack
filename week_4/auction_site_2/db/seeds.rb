# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



user1 = User.create!(name: "Sebas", email: "sebas@starwars.com")
user2 = User.create!(name: "Fernando", email: "fer@starwars.com")

[user1, user2].each do |user|
	5.times do |i|
		user.products << Product.new(title: "Product #{i}", description: "Belongs to #{user.name}", deadline: i.days.from_now)
	end
end
