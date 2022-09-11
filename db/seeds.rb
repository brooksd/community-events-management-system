puts "🌱 Seeding Greatness!..."

# Seed your database here
donald_brooks = User.create(name: "Donald Brooks", email: "brooksdee@gmail.com", password: "pw1234")

john_mark = User.create(name: "John Mark", email: "themarkjack@gmail.com", password: "pw1234")

steve_nyagol = User.create(name: "Steve Nyagol", email: "nyagolsteve@gmail.com", password: "pw1234")


Review.create(name: "Donald Brooks", review: "the event was amazing!")
Review.create(name: "John Mark", review: "i will hack the bank!")
Review.create(name: "Nyagol Steve", review: "they could do better!")
Review.create(name: "Mary Stalion", review: "cant wait for the next one")


Event.create(address: "5426 Mulbary Drive", title: "Social Media", image: "https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260", description: "REMOTE: Peace Coffee would love help for setting up a Facebook page to showcase online menu and pickup/delivery options.", isFavorite: true , user_id: donald_brooks.id)

Event.create(address: "5574 Luthuli Drive", title: "Ruby Hackathon", image: "https://images.pexels.com/photos/891393/pexels-photo-891393.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", description: "REMOTE: Rabbit Hole would appreciate help for setting up online order and delivery on the website.", isFavorite: true, user_id: donald_brooks.id)

Event.create(address: "8836 Mashimoni Street", title: "Book Club", image: "https://images.pexels.com/photos/1370298/pexels-photo-1370298.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260", description: "IN-PERSON: Wild Rumpus is looking for 2 volunteers to help organizing books and managing new pickup option.", isFavorite: true, user_id: john_mark.id)

Event.create(address: "4434 Moi Avenue", title: "Food Summit", image: "https://images.pexels.com/photos/2387343/pexels-photo-2387343.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260", description: "IN-PERSON: Neighborhood House needs 15 volunteers to help food distribution.", isFavorite: false , user_id: steve_nyagol.id)

puts "✅ Done seeding!"
