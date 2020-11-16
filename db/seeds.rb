# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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