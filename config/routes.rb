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

  resources :complaints do
    scope module: :complaints do
      resources :status, param: :event, only: :update
    end
  end

  resources :categories
  resources :dependencies
end
