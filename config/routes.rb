Rails.application.routes.draw do
  resources :users
  resources :posts
  root 'posts#index'

  get 'signup'  => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

end