Rails.application.routes.draw do
  get "cats/random", to: "cats#random"
  get "cats/search", to: "cats#search"
  get "dogs/random", to: "dogs#random"
  get "dogs/search", to: "dogs#search"

  resources :dogs
  resources :cats
end
