Rails.application.routes.draw do
  resources :courier_statuses
  resources :couriers
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

  # GET routes
  get '/users', to: 'users#index'
  get 'products', to: 'products#index'

  namespace :api do
    get '/orders', to: 'orders#index', as: 'api_orders'
    post 'login', to: 'auth#index'

    resources :orders, only: [:index, :create] do
      namespace :api do
        post '/api/order/#{@order.id}/status', to: 'orders#update_order_status', as: 'api_update_order_status'
      end
    end
  end
end
