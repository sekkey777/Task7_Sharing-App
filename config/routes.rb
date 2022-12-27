Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/posts', to: 'posts#new'
  post '/posts', to: 'posts#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
