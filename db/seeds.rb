# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
mcdonalds = { name: 'Mcdo', address: '16 rue du temple, paris 16', category: 'french', phone_number: '0130323444' }
fricadelle = { name: 'Fricadelle', address: '1664 rue de la biere, bruxelles', category: 'belgian', phone_number: '16641886' }
pizzaluigi = { name: 'pizzaluigi', address: '5 avenue du rital, roma', category: 'italian', phone_number: '88871635442' }
narutosushi = { name: 'narutosushi', address: '123 avenue du grain de riz, tokyo', category: 'japanese', phone_number: '000033399300' }
petitbambou = { name: 'petitbambou', address: '1 rue du bambou qui plie, pekin', category: 'chinese', phone_number: '334234' }

[mcdonalds, fricadelle, pizzaluigi, narutosushi, petitbambou].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
