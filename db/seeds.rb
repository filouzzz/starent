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
avatar_to_randomize = ["https://kitt.lewagon.com/placeholder/users/quiko", "https://kitt.lewagon.com/placeholder/users/filouzzz", "https://kitt.lewagon.com/placeholder/users/faninos", "https://kitt.lewagon.com/placeholder/users/remidatroa", "https://kitt.lewagon.com/placeholder/users/jerboulade"]
10.times do
  pass =  Faker::Internet.password(10, 20)
  user = User.new( email: Faker::Internet.email, password: pass, encrypted_password: pass, photo: avatar_to_randomize.sample )
  user.save!
end


#Creating 7 fake planet to db.
type_to_sample = ["moon","planet", "asteroid", "comet", "stars"]
name_to_sample = ["Earth","Neptune", "Mercure", "Mars", "Saturne", "Venus", "Gliese 676 Ac", "Kepler-20g", "Proxima Centauri", "XO-6b", "51 Pegasi", "55 Cancri", "70 Virginis", "Upsilons", "Andromedae" ]
distance_to_randomize = (100000..50000000).to_a
price_to_randomize = (1000..4000).to_a
weather_to_randomize = ["Stormy like hell, but you'll love it", "Freesing, perect for nights under the blanket", "Super hot and wet, you'll love it", "Too too hot, you won't survive but we can still provide a good deal", "Just a bit chilli, but there is only 5 minutes of sun per day", "Actually we do not what is the weather."]

puts "Seeding Destinations"
puts "Adding 15 Destinations "
images = ["a.jpg","b.jpg","c.jpg","d.jpg","e.jpg", "f.jpg", "g.jpg", "h.jpg", "i.jpg", "j.jpg", "k.jpg", "l.jpg", "m.jpg", "n.jpg", "o.jpg"]
name_to_sample.each_with_index do |planet_name, index|
<<<<<<< HEAD
  destination = Destination.new(name: planet_name, planet_type: type_to_sample.sample, distance: distance_to_randomize.sample, price: price_to_randomize.sample, created_at: Time.now, user_id: User.all.sample.id, booked: false  )
  destination.seed_photo = images[index]
=======
  destination = Destination.new(name: planet_name, planet_type: type_to_sample.sample, distance: distance_to_randomize.sample, price: price_to_randomize.sample, weather: weather_to_randomize.sample, created_at: Time.now, user_id: User.all.sample.id, booked: false )
  destination.photo = images[index]
>>>>>>> cb25a01aef69ad72eb8b51c1a9e7c41561673ec5

  destination.save!

  p destination
  puts "destination created #{destination.name }"
end
