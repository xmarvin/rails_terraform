require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => "/sidekiq" # mount Sidekiq::Web in your Rails app

  root 'home#index'
  resources :notes, only: [:index, :create]
  resources :tasks_count, only: [:new, :create]
end
