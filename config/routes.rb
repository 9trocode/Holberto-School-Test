# frozen_string_literal: true

Rails.application.routes.draw do
  resources :libary_locations
  # resources :users
  resources :books
  # resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#login'
  post 'login' => 'sessions#create'
  get 'login' => 'sessions#login'
  get 'register' => 'sessions#register'
  post 'register' => 'sessions#new_user'
  get 'profile' => 'users#index'
  post 'update_profile' => 'users#update'
  get 'log_out' => 'sessions#destroy'

  # Admin Categories
  get 'genre' => 'categories#index'
  get 'genre_new' => 'categories#new'
  post 'add_genre' => 'categories#create'
  get 'edit_genre/:id' => 'categories#edit'
  post 'update_genre' => 'categories#update'
  get 'delete_genre/:id' => 'categories#destroy'

end
