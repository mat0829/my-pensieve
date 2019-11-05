Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :memories
  resources :users

  root "static#home"
  get "/login", to: "sessions#new"
  post "/sessions/create", to: "sessions#create"
end
