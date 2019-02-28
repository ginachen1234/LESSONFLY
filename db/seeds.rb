# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 require 'faker'
puts "Seeding the DB..."

User.destroy_all

5.times do
  User.create!(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    biography: Faker::Quote.matz,
    teacher: false
    )
end

25.times do
  User.create!(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    skill: Faker::Educator.subject,
    location: Faker::Address.city,
    biography: Faker::Quote.matz,
    teacher: true,
    address: "#{rand(1..512)} Kingsland Road, London"
    )
end

25.times do
  User.create!(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    skill: Faker::Educator.subject,
    location: Faker::Address.city,
    biography: Faker::Quote.matz,
    teacher: true,
    address: "#{rand(1..300)} Hoxton Street, London"
    )
end

puts "Seed done!"
