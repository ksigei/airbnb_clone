Rails.application.routes.draw do
  resources :users
  devise_for :users
  
  resources :places
  resources :states
  resources :cities 
  resources :reviews
  resources :place_amenities
  resources :amenities
  root 'places#index'

  # login routes using devise
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  # get '/users/:id' => 'users#show', as: 'user'
  # get '/users/:id/edit' => 'users#edit', as: 'edit_user'


end
