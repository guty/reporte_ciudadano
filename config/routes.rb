# frozen_string_literal: true

Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root 'landing#index'

  resources :categories
  resources :dependencies
end
