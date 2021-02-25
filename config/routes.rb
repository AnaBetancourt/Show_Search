Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :actors 
  resources :characters, except: [:index]
  resources :reviews, except: [:index, :show]
  resources :tv_shows
  get "/signup", to: "users#new"
  resources :users, except: [:index, :new]

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"

  root 'application#home'
end
