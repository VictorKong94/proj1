Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers

  patch 'capture', to: 'pokemons#capture'
  patch 'damage', to: 'pokemons#damage'
  patch 'heal', to: 'pokemons#heal'
  patch 'release', to: 'pokemons#release'

  get 'pokemons/new', to: 'pokemons#new'
  post 'pokemons', to: 'pokemons#create'
end
