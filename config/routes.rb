Rails.application.routes.draw do
  resources :replies
  resources :acorn_hashtags
  resources :hashtags
  resources :likes
  resources :acorns
  resources :followers
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "acorns#index"
end
