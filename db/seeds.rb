# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Creating user
puts "Seeding User"
Destination.destroy_all

User.destroy_all
puts "Adding 10 user"
10.times do
  pass =  Faker::Internet.password(10, 20)
  user = User.new( email: Faker::Internet.email,password: pass,encrypted_password: pass )
  user.save!
end


#Creating 7 fake planet to db.
type_to_sample = ["moon","planet", "asteroid", "comet", "stars"]
name_to_sample = ["Earth","Neptune", "Mercure", "Mars", "Saturne", "Venus", "Gliese 676 Ac", "Kepler-20g", "Proxima Centauri", "XO-6b", "51 Pegasi", "55 Cancri", "70 Virginis", "Upsilons", "Andromedae" ]
distance_to_randomize = (100000..50000000).to_a
price_to_randomize = (500..10000).to_a

puts "Seeding Destinations"
puts "Adding 15 Destinations "
images = ["a.jpg","b.jpg","c.jpg","d.jpg","e.jpg", "f.jpg", "g.jpg", "h.jpg", "i.jpg", "j.jpg", "k.jpg", "l.jpg", "m.jpg", "n.jpg", "o.jpg"]
name_to_sample.each_with_index do |planet_name, index|
  destination = Destination.new(name: planet_name, planet_type: type_to_sample.sample, distance: distance_to_randomize.sample, price: price_to_randomize.sample, created_at: Time.now, user_id: User.all.sample.id, booked: false  )
  destination.photo = images[index]

  destination.save!

  p destination
  puts "destination created #{destination.name }"
end
