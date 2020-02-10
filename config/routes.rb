# frozen_string_literal: true

Rails.application.routes.draw do
  resources :sessions, only: %i[new create destroy]
  resources :users
  get 'demo/index' => 'demo#index'
  root 'demo#index'
  post 'login', to: 'sessions#create'
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
end
