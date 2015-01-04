Rails.application.routes.draw do
  resources :items

  resources :order_suppliers

  resources :orders

  resources :products

  resources :suppliers

  resources :groups

  resources :units

#  match ':controller(/:action(/:id))', :via => [ :get, :post] 

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
