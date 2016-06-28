Rails.application.routes.draw do
  root 'top#index'

  get '/login/:sns', to: 'sessions#create', as: :login
  get '/logout', to: 'sessions#destroy'
  resources :signups, only: [:index]
  resources :groups
  resources :users
end
