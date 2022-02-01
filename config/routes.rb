# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root 'landing#index'

  resources :dashboards, path: 'ciudadano', only: [:index]
  resources :complaints

  resources :categories
  resources :dependencies
end
