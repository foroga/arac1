Rails.application.routes.draw do
  resources :groups

  resources :units

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
