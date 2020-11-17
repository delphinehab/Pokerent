Rails.application.routes.draw do
  devise_for :users
  root to: 'pokemons#index'

<<<<<<< HEAD
  resources :pokemons do
    resources :reviews, only: [ :new, :create ]
  end
=======
  resources :pokemons
  
  resources :pokemons do
    resources :bookings, only: [:new, :create]
  end
  
  resources :bookings

  resources :users do
    resources :bookings, only: [:index]
  end

>>>>>>> 75d8b4b740d0290ee9f7e588cf020ef37a281530
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
