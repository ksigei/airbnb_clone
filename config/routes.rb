Rails.application.routes.draw do
  devise_for :users
  resources :users

  resources :places
  root 'places#index'

  resources :states 
  resources :cities 
  resources :reviews
  resources :place_amenities
  resources :amenities
end
