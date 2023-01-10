Rails.application.routes.draw do
  root to: 'posts#index'

  # sessionsコントローラ
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # postsコントローラ
  get '/home', to: 'posts#home'

  resources :posts do
    post '/searches', to: 'searches#search'
  end
  resources :users
  resources :reservations

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
