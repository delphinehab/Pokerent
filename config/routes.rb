Rails.application.routes.draw do
  devise_for :users
  root to: 'pokemons#index'
  resources :pokemons
  resources :pokemons do
    resources :bookings
  end
  resources :bookings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
