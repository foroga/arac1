Rails.application.routes.draw do
  resources :products

  resources :suppliers

  resources :groups

  resources :units

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
