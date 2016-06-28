Rails.application.routes.draw do
  root 'top#index'

  resources :groups
  resources :users
end
