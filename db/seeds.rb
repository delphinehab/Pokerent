
Pokemon.create(name: 'Salameche', description: 'Charmander (Japanese: ヒトカゲ Hitokage) is a Fire-type Pokémon introduced in Generation I. It evolves into Charmeleon starting at level 16, which evolves into Charizard starting at level 36.', element: 'fire', evolution_level: '1', user_id: 1, image: )
Pokemon.create(name: 'Pikatchu', description: 'Pikachu (Japanese: ピカチュウ Pikachu) is an Electric-type Pokémon introduced in Generation I. It evolves from Pichu when leveled up with high friendship and evolves into Raichu when exposed to a Thunder Stone.', element: 'electricity', evolution_level: '1', user_id: 2, image:)
Pokemon.create(name: 'Bulbizarre', description: 'Bulbasaur (Japanese: フシギダネ Fushigidane) is a dual-type Grass/Poison Pokémon introduced in Generation I. It evolves into Ivysaur starting at level 16, which evolves into Venusaur starting at level 32.', element: 'grass', evolution_level: '1', user_id: 3, image:)
Pokemon.create(name: 'Dracaufeu', description: 'Charizard (Japanese: リザードン Lizardon) is a dual-type Fire/Flying Pokémon introduced in Generation I. It evolves from Charmeleon starting at level 36. It is the final form of Charmander.', element: 'fire', evolution_level: '2', user_id: 4, image:)

User.create! :name => 'Antoine Goeuriot', :email => 'antoine.goeuriot@gmail.com', :password => '123456', :password_confirmation => '123456'
User.create! :name => 'Tanguy Truhe', :email => 'tanguy.truhe@gmail.com', :password => '123456', :password_confirmation => '123456'
User.create! :name => 'Delphine Habert', :email => 'delphine.habert@gmail.com', :password => '123456', :password_confirmation => '123456'
User.create! :name => 'Rodolphe Vacher', :email => 'rodolphe.vacher@gmail.com', :password => '123456', :password_confirmation => '123456'

Review.create! :content => 'Good pokemon, will rent again', :pokemon_id => 1, :user_id => 1 
Review.create! :content => 'Good pokemon, will rent again', :pokemon_id => 2, :user_id => 2
Review.create! :content => 'Good pokemon, will rent again', :pokemon_id => 3, :user_id => 3 
Review.create! :content => 'Good pokemon, will rent again', :pokemon_id => 4, :user_id => 4

Booking.create! :user_id => 1, :pokemon_id 1
Booking.create! :user_id => 2, :pokemon_id 2 

# only creating 2 bookings so that 2 pokemons are booked and 2 are not
