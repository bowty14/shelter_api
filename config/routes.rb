Rails.application.routes.draw do
  get "cats/random", to: "cats#random"
  get "cats/search", to: "cats#search"
  
  resources :dogs
  resources :cats
end
