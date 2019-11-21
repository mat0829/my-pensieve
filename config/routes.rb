Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :memories
  resources :users
  resources :emotions
  resources :players

  root "static#home"
  get "/login", to: "sessions#new"
  post "/sessions/create", to: "sessions#create"
  get '/auth/facebook/callback', to: 'sessions#create_facebook_user'
  get "/logout", to: "sessions#destroy"
  post "/memories/new", to: "memories#new"
end
