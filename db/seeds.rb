# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  User.create(email: Faker::Internet.email, password: "password", username: Faker::Internet.user_name)
end

20.times do
  Game.create(sets: rand(5..30), end_time: Time.now + rand(100..200), user_id: rand(1..10))
end
