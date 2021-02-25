Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#home'
  resources :actors 
  resources :characters, except: [:index]
  resources :reviews, except: [:index, :show]
  resources :tv_shows
  resources :users, except: [:index]

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  
end
