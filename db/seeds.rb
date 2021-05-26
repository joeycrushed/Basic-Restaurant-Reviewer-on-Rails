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
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: '0207-323-2323', category: "chinese" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch, London E1 6PQ", phone_number: '0207-323-2323', category: "italian" }
chipolte = { name: "Chipolte", address: "21 Wardour St, Soho, London", phone_number: '0207-323-2323', category: "belgian"}
barry_cafe = { name: "Barry's Cafe", address: "22A Hoxton High St, London E2 T2Q", phone_number: '0207-323-2323', category: "japanese" }
purezza = { name: "Purezza", address: "123 Camden Road, Camden, Lodon W4 R6Q", phone_number: '0207-323-2323', category: "italian" }

[dishoom, pizza_east, chipolte, barry_cafe, purezza].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
