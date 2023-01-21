Rails.application.routes.draw do
  root to: 'rooms#index'

  # sessionsコントローラ
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # roomsコントローラ
  get '/home', to: 'rooms#home'
  get '/top', to: 'rooms#top'
  post 'reservations/confirm', to: 'reservations#confirm'

  resources :rooms do
    post '/searches', to: 'searches#search'
  end

  resources :users
  resources :reservations

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
