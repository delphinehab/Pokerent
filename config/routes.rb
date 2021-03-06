Rails.application.routes.draw do
  devise_for :users
  root to: 'pokemons#index'

  resources :pokemons do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]


  resources :bookings do
    resources :pokemons
    resources :conversations do
      resources :messages
    end
  end

  resources :messages


  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
