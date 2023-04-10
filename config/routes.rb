Rails.application.routes.draw do
  resources :product_orders
  resources :orders
  resources :order_statuses
  resources :products
  resources :customers
  resources :restaurants
  resources :employees
  resources :addresses
  devise_for :users
  root to: "home#index" 
  get '/users', to: 'users#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
