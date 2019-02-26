# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 require 'faker'
puts "Seeding"

5.times do
  User.create!(
                first_name: Faker::Name.name,
                last_name: Faker::Name.name,
                email: Faker::Internet.email,
                password: Faker::Internet.password,
                role: "teacher"
                )
end

puts "Seed done!"
