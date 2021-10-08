# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Faker::Name.unique.clear
Faker::UniqueGenerator.clear

Beer.delete_all
Company.delete_all

8.times do
  company = Company.create(name: Faker::Company.unique.name)

  number_of_beers_to_create = rand(4...8)

  number_of_beers_to_create.times do
  # Create beers with a particular company id
    company.beers.create(
      name: Faker::Beer.unique.name,
      description: "This #{Faker::Beer.style} style of beer has #{Faker::Beer.alcohol}  alcohol ",
      price: Faker::Commerce.price
    )
  end
end

puts "Created #{Company.count} Comanpies!"
puts "Created #{Beer.count} Beers!"