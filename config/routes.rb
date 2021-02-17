Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :actors 
  resources :characters, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :reviews, only: [:new, :create, :edit, :update, :destroy]
  resources :tvshows
  resources :users

  root 'application#home'
end
