# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 require 'faker'
puts "Seeding"

User.destroy_all

5.times do
  User.create!(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    teacher: false
    )
end

User.create!(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    skill: Faker::Educator.subject,
    location: Faker::Address.city,
    teacher: true,
    address: "138 Kingsland Road, London"
)

User.create!(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    skill: Faker::Educator.subject,
    location: Faker::Address.city,
    teacher: true,
    address: "71 Hackney Road, London"
)

User.create!(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    skill: Faker::Educator.subject,
    location: Faker::Address.city,
    teacher: true,
    address: "38 Great Eastern St, London EC2A 3ES"
)

User.create!(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    skill: Faker::Educator.subject,
    location: Faker::Address.city,
    teacher: true,
    address: "49 Columbia Rd, London E2 7RG"
)

User.create!(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    skill: Faker::Educator.subject,
    location: Faker::Address.city,
    teacher: true,
    address: "80 Columbia Rd, London E2 7QB"
)


puts "Seed done!"
