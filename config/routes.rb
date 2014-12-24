Rails.application.routes.draw do
  resources :items

  resources :order_suppliers

  resources :orders

  resources :products

  resources :suppliers

  resources :groups

  resources :units

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
