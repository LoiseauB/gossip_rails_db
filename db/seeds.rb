# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all

10.times do
  City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

User.destroy_all

10.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence, email: Faker::Internet.email, age: rand(16..77), city: City.all.sample)
end

Gossip.destroy_all

20.times do
  Gossip.create(title: Faker::Book.title, content: Faker::Quote.yoda, user: User.all.sample)
end

Tag.destroy_all

10.times do
  Tag.create(title: Faker::Book.genre)
end

Attribution.destroy_all

30.times do
  Attribution.create(gossip: Gossip.all.sample, tag: Tag.all.sample)
end

PrivateMessage.destroy_all

15.times do
  PrivateMessage.create(content: Faker::Movies::HarryPotter.quote, sender: User.all.sample)
end

Sending.destroy_all

15.times do
  Sending.create(private_message: PrivateMessage.all.sample, recipient: User.all.sample)
end