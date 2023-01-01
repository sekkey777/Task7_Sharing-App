Rails.application.routes.draw do
  root to: 'posts#index'

  get '/login', to: 'sessions#login'
  get '/new', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/home', to: 'posts#home'

  # get '/posts', to: 'posts#new'
  # post '/posts', to: 'posts#create'

  resources :posts
  resources :users
  resources :reservations

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
