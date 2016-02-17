Rails.application.routes.draw do
  resources :users
  resources :posts
  root 'users#index'

  get 'login' => 'sessions#new'
end