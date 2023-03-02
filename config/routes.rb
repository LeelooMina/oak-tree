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
end
