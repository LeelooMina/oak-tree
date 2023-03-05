Rails.application.routes.draw do
  resources :replies
  resources :acorn_hashtags
  resources :hashtags
  resources :likes
  resources :acorns
  resources :follows
  resources :users, except: [:new]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "acorns#index"
  get "/sign-up", to: "users#new"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  post '/likes', to: "likes#new"
  delete '/logout', to: 'sessions#destroy'
end
