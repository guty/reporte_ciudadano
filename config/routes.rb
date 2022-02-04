# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations"
  }
  root "landing#index"

  namespace :complaints do
    get "/search", to: "search#index", as: "search"
  end
  resources :dashboards, path: "ciudadano", only: [:index]
  resources :complaints

  resources :categories
  resources :dependencies
end
