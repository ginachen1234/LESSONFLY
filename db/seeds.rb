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


 user = User.create!(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    skill: Faker::Educator.subject,
    location: Faker::Address.city,
    biography: Faker::Quote.matz,
    teacher: true,
    address: "#{rand(1..512)} Kingsland Road, London, UK",
    )
 #this is a CarrierWave helper, it uploads the photo to Cloudinary, which is why the cl_tag is working
  user.remote_photo_url = "https://images.pexels.com/photos/450271/pexels-photo-450271.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  user.save


  user = User.create!(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    skill: Faker::Educator.subject,
    location: Faker::Address.city,
    biography: Faker::Quote.matz,
    teacher: true,
    address: "#{rand(1..300)} Hoxton Street, London, UK",
    )
  user.remote_photo_url = "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  user.save



  user = User.create!(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    skill: Faker::Educator.subject,
    location: Faker::Address.city,
    biography: Faker::Quote.matz,
    teacher: true,
    address: "#{rand(1..300)} Theobalds Road, London, UK",
    )
  user.remote_photo_url = "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  user.save



  user = User.create!(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    skill: Faker::Educator.subject,
    location: Faker::Address.city,
    biography: Faker::Quote.matz,
    teacher: true,
    address: "#{rand(1..300)} Brook Street, London, UK",
    )
  user.remote_photo_url = "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  user.save


user = User.create!(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    skill: Faker::Educator.subject,
    location: Faker::Address.city,
    biography: Faker::Quote.matz,
    teacher: true,
    address: "#{rand(1..300)} Haverstock Hill, London, UK",
    )
  user.remote_photo_url = "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  user.save

user = User.create!(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    skill: Faker::Educator.subject,
    location: Faker::Address.city,
    biography: Faker::Quote.matz,
    teacher: true,
    address: "#{rand(1..300)} Honduras Road, London, UK",
    )
  user.remote_photo_url = "https://images.pexels.com/photos/462680/pexels-photo-462680.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  user.save


user = User.create!(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    skill: Faker::Educator.subject,
    location: Faker::Address.city,
    biography: Faker::Quote.matz,
    teacher: true,
    address: "#{rand(1..300)} Peckham Hill Street, London, UK",
    )
  user.remote_photo_url = "https://images.pexels.com/photos/937481/pexels-photo-937481.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  user.save


user = User.create!(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    skill: Faker::Educator.subject,
    location: Faker::Address.city,
    biography: Faker::Quote.matz,
    teacher: true,
    address: "#{rand(1..300)} Peckham Hill Street, London, UK",
    )
  user.remote_photo_url = "https://images.pexels.com/photos/834863/pexels-photo-834863.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  user.save

  user = User.create!(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    skill: Faker::Educator.subject,
    location: Faker::Address.city,
    biography: Faker::Quote.matz,
    teacher: true,
    address: "#{rand(1..300)} Albion Street, London, UK",
    )
  user.remote_photo_url = "https://images.pexels.com/photos/35183/people-homeless-man-male.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  user.save

  user = User.create!(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    skill: Faker::Educator.subject,
    location: Faker::Address.city,
    biography: Faker::Quote.matz,
    teacher: true,
    address: "#{rand(1..300)} Southwark Park Road, London, UK",
    )
  user.remote_photo_url = "https://images.pexels.com/photos/372042/pexels-photo-372042.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  user.save

  user = User.create!(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    skill: Faker::Educator.subject,
    location: Faker::Address.city,
    biography: Faker::Quote.matz,
    teacher: true,
    address: "#{rand(1..300)} Greenwich Street, London, UK",
    )
  user.remote_photo_url = "https://images.pexels.com/photos/214574/pexels-photo-214574.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  user.save

  user = User.create!(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    skill: Faker::Educator.subject,
    location: Faker::Address.city,
    biography: Faker::Quote.matz,
    teacher: true,
    address: "#{rand(1..300)} Bolton Gardens, London, UK",
    )
  user.remote_photo_url = "https://images.pexels.com/photos/37547/suit-business-man-business-man-37547.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  user.save


puts "Seed done!"
