Rails.application.routes.draw do
  get 'places/index'
  get 'places/show'
  get 'places/create'
  get 'places/new'
  get 'places/edit'
  get 'places/destroy'
  get 'users/index'
  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'users#index'
end
