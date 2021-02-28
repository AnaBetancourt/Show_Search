Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'application#home'
  resources :actors do
    resources :tv_shows, only: []
    resources :characters, only: []
    # characters and tv shows
  end
  resources :characters
  resources :reviews, except: [:index, :show]
  resources :tv_shows do
    # actors and characters
  end
  resources :users, except: [:index, :destroy]

  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  
end
