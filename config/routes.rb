Rails.application.routes.draw do
  get "cats/random", to: "cats#random"

  resources :dogs
  resources :cats
end
