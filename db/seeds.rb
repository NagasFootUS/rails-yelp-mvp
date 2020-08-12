# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "2526789098765", category: "italian" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "2526789098765", category: "chinese" }
reke = { name: "reke", address: "7 Boundary St, London E2 7JE", phone_number: "2526789098765", category: "french" }
doung =  { name: "doung", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "2526789098765", category: "belgian" }
firstlap = { name: "first lap", address: "7 Boundary St, London E2 7JE", phone_number: "2526789098765", category: "japanese" }

[dishoom, pizza_east, reke, doung, firstlap].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
