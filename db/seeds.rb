# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  user = User.create!(name: Faker::HarryPotter.character)
end
15.times do
  use = User.offset(rand(User.count)).first
  pin = Pin.create!(image_url: Faker::Internet.url, user: use) 
end
20.times do
  use = User.offset(rand(User.count)).first
  p = Pin.offset(rand(Pin.count)).first
  comment = Comment.create!(content: Faker::Hacker.say_something_smart, user: use, pin: p)
end
