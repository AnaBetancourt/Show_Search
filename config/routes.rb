Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'application#home'
  resources :users, except: [:index, :destroy]
  # get '/homepage', to: 'users#show'
  resources :actors do
    resources :tv_shows, only: [:index]
    resources :characters, only: [:index, :new, :create]
  end
  resources :characters
  resources :tv_shows do
    resources :actors, only: [:index, :new, :create]
    resources :characters, only: [:index, :new, :create]
  end
  resources :reviews, except: [:index, :show]

  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  
end
