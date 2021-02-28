Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'application#home'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  resources :users, only: [:edit, :show]
  resources :actors
  resources :characters
  get '/tv_shows/most_reviewed', to: "tv_shows#reviewed"
  resources :tv_shows do
    resources :actors, only: [:index]
    resources :characters, only: [:index, :new, :create]
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, except: [:index, :show, :new]

  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  
end
