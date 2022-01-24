# frozen_string_literal: true

Rails.application.routes.draw do
  root "landing#index"
  devise_for :users
  resources :complaints
  resources :categories
end
