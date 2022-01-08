Rails.application.routes.draw do
  devise_for :users

  root to: 'movies#index'
  resources :ranks
  resources :movies
  resources :assesments
end
