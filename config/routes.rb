Rails.application.routes.draw do
  devise_for :users
  root 'movies#index'
  resources :users, only: [:index, :edit, :update]
  resources :movies, only: [:index, :edit, :update]
end