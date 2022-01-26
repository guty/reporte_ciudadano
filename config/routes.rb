# frozen_string_literal: true

Rails.application.routes.draw do
  resources :categories
  resources :dependencies
  devise_for :users
  root "landing#index"
end
