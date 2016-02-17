Rails.application.routes.draw do
  resources :users
  resources :posts
  root 'users#index'


  get 'signup'  => 'users#new'
  get 'login' => 'sessions#new'
  get 'logout' => 'sessions#destroy'

end