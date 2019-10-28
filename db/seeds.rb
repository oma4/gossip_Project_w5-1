# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
City.destroy_all
Gossip.destroy_all
Tag.destroy_all
Jointabletag.destroy_all
PrivateMessage.destroy_all


10.times do
	city = City.create!(name: Faker::Address.city,zip_code: Faker::Address.zip_code)
end

10.times do 
	user = User.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,description: Faker::Quote.famous_last_words,email: Faker::Internet.free_email,age: Faker::Number.within(range: 10..60),city_id: City.all.sample.id)
end

20.times do
	gossip = Gossip.create!(title: Faker::DcComics.title,content: Faker::Quotes::Shakespeare.romeo_and_juliet_quote,user_id: User.all.sample.id)
end

10.times do
	tag = Tag.create!(title: Faker::Beer.brand)
end

20.times do
	jointabletag = Jointabletag.create!(tag_id: Tag.all.sample.id,gossip_id: Gossip.all.sample.id)
end

10.times do
	pm = PrivateMessage.create!(content: Faker::Quotes::Shakespeare.romeo_and_juliet_quote,recipient_id: User.all.sample.id,sender_id: User.all.sample.id)
end