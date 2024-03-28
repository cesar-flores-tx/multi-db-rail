Rails.application.routes.draw do
  get 'authors/index'
  # Defines the root path route ("/")
  root "articles#index"

  resources :articles
  resources :authors
end
