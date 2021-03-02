Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'application#home'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/tv_shows/most_reviewed', to: "tv_shows#reviewed"
  get '/tv_shows/currently_airing', to: "tv_shows#currently_airing"

  resources :users, only: [:edit, :show, :update]
  resources :actors
  resources :characters
  resources :reviews, except: [:index, :show, :new]
  resources :tv_shows do
    resources :actors, only: [:index]
    resources :characters, only: [:index, :new, :create]
    resources :reviews, only: [:new, :create]
  end
  
end
