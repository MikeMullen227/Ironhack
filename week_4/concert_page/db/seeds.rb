# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


concert_1 = Concert.create!(artist: "Smashing Pumpkins", venue: "Bayfront Amphitheater", city: "Miami", date: DateTime.new(2016, 9, 12, 24), price: "$45", description: "90's Grunge Rock")
concert_2 = Concert.create!(artist: "Intronaut", venue: "Freddys Bar", city: "Seattle", date: DateTime.new(2016, 9, 12, 24), price: "$20", description: "Math Metal")
concert_3 = Concert.create!(artist: "El Ten Eleven", venue: "The Coliseum", city: "Atlanta", date: DateTime.new(2016, 9, 14, 19), price: "$15", description: "Instrumental Rock")
concert_4 = Concert.create!(artist: "Sade", venue: "The Village", city: "New York", date: DateTime.new(2016, 9, 22, 20), price: "$50", description: "Smooth Pop/Jazz")
concert_5 = Concert.create!(artist: "Black Sabbath", venue: "Cruzan Amphitheater", city: "Palm Beach", date: DateTime.new(2016, 9, 12, 22), price: "$50", description: "Classic Rock")
concert_6 = Concert.create!(artist: "Billy Joel", venue: "The Palace", city: "Chicago", date: DateTime.new(2016, 9, 28, 19), price: "$60", description: "Classic Rock/Pop")
concert_7 = Concert.create!(artist: "The Cure", venue: "Red Rocks Amphiteater", city: "Denver", date: DateTime.new(2016, 9, 12, 23), price: "$40", description: "Goth Rock")