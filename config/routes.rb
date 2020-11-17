Rails.application.routes.draw do
  devise_for :users
  root to: 'pokemons#index'

  resources :pokemons do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :users

  resources :users, only: [:show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
