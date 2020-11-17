puts "destroy review"
Review.destroy_all
puts "destroy booking"
Booking.destroy_all
puts "destroy pokemon"
Pokemon.destroy_all
puts "destroy user"
User.destroy_all

puts "create user"
antoine = User.create! :email => 'antoine@gmail.com', :password => '123456', :password_confirmation => '123456'
tanguy = User.create! :email => 'tanguy@gmail.com', :password => '123456', :password_confirmation => '123456'
delphine = User.create! :email => 'delphine@gmail.com', :password => '123456', :password_confirmation => '123456'
rodolphe = User.create! :email => 'rodolphe@gmail.com', :password => '123456', :password_confirmation => '123456'

puts "create pokemon"
salameche = Pokemon.create!(name: 'Salameche', description: 'Charmander (Japanese: ヒトカゲ Hitokage) is a Fire-type Pokémon introduced in Generation I. It evolves into Charmeleon starting at level 16, which evolves into Charizard starting at level 36.', element: 'fire', evolution_level: '1', user: antoine)
pikatchu = Pokemon.create!(name: 'Pikatchu', description: 'Pikachu (Japanese: ピカチュウ Pikachu) is an Electric-type Pokémon introduced in Generation I. It evolves from Pichu when leveled up with high friendship and evolves into Raichu when exposed to a Thunder Stone.', element: 'electricity', evolution_level: '1', user: tanguy)
bulbizarre = Pokemon.create!(name: 'Bulbizarre', description: 'Bulbasaur (Japanese: フシギダネ Fushigidane) is a dual-type Grass/Poison Pokémon introduced in Generation I. It evolves into Ivysaur starting at level 16, which evolves into Venusaur starting at level 32.', element: 'grass', evolution_level: '1', user: delphine)
dracaufeu = Pokemon.create!(name: 'Dracaufeu', description: 'Charizard (Japanese: リザードン Lizardon) is a dual-type Fire/Flying Pokémon introduced in Generation I. It evolves from Charmeleon starting at level 36. It is the final form of Charmander.', element: 'fire', evolution_level: '2', user: rodolphe)

puts "create booking"
booking1 = Booking.create! user: delphine, pokemon: salameche
booking2 = Booking.create! user: rodolphe, pokemon: pikatchu

puts "create conversation"
conversation1 = Conversation.create(booking: booking1)
conversation2 = Conversation.create(booking: booking2)

puts "create review"
Review.create! :content => 'Good pokemon, will rent again', booking: booking1
Review.create! :content => 'Good pokemon, will rent again', booking: booking2



# only creating 2 bookings so that 2 pokemons are booked and 2 are not
