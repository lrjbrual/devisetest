Rails.application.routes.draw do
  resources :posts
  # devise_for :users, :path_prefix => 'd'
  # resources :users, :only =>[:show]
  root to: 'pages#home'
  devise_for :users
  resources :users, only: :index
  # resource :admins
  # match '/admins',   to: 'admins#index',   via: 'get'
  # match '/users/:id',     to: 'users#show',       via: 'get'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end