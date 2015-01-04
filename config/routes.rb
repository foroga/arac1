Rails.application.routes.draw do
  resources :items

  resources :order_suppliers

  resources :orders

  resources :products

  resources :suppliers

  resources :groups

  resources :units

  devise_for :users
  resources :users

  get '/orders/open/:id', to: 'orders#open'

#  match ':controller(/:action(/:id))', :via => [ :get, :post] 

  root to: 'visitors#index'
end
