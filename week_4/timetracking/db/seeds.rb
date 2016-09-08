# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

iron_hack = Project.create!(name: 'Ironhack', description: 'Ironhack is a...')

recipes = Project.create!(name: 'Recipes', description: 'Track my favorite recipes' )

movies = Project.create!(name: 'Movies', description: 'Track my favorite movies')

music = Project.create!(name: 'Music', description: 'Track my favorite music')

hobbies = Project.create!(name: 'Hobbies', description: 'Track my favorite hobbies')

food = Project.create!(name: 'Food', description: 'Track my favorite food')

cars = Project.create!(name: 'Cars', description: 'Track my favorite cars')

animals = Project.create!(name: 'Animals', description: 'Track my favorite animals')

destinations = Project.create!(name: 'Destinations', description: 'Track my favorite destinations')


iron_hack.time_entries.create(hours: '0', minutes: '50')

recipes.time_entries.create(hours: '0', minutes: '35')


movies.time_entries.create(hours: '1', minutes: '20')