# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
restaurants_data = [
  { name: "Le Dragon Rouge", address: "123 Rue de la Pagode, Paris, France", category: "Chinese", phone_number: "+33 1 23 45 67 89" },
  { name: "La Belle Époque", address: "456 Avenue des Champs-Élysées, Paris, France", category: "French", phone_number: "+33 1 54 32 10 98" },
  { name: "Sakura Sushi", address: "789 Shibuya Crossing, Tokyo, Japan", category: "Japanese", phone_number: "+81 3 76 54 32 10" },
  { name: "Trattoria Buona Tavola", address: "234 Via Veneto, Rome, Italy", category: "Italian", phone_number: "+39 06 87 65 43 21" },
  { name: "Le Petit Manneken", address: "567 Grand-Place, Brussels, Belgium", category: "Belgian", phone_number: "+32 2 10 98 76 54" }
]

restaurants_data.each do |restaurant_data|
  Restaurant.create!(restaurant_data)
end

puts "Finished!"
