Rails.application.routes.draw do
  root to: "books#index"

  resources :books

  resources :users, only: [:show, :new, :create]

  get '/login', to: "sessions#new"
  post '/login', to: 'sessions#create'
  # get "/random_book", to: "books#random"
  delete '/logout', to: 'sessions#destroy'

end
