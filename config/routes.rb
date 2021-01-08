# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_up: 'register', sign_in: 'login', sign_out: 'logout' }
  resources :users
  resources :portfolios, except: [:show]
  get 'angular-items', to: 'portfolios#angular'
  get 'rails-items', to: 'portfolios#rails'
  get 'service-items', to: 'portfolios#service'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  # get 'pages/home'
  # get 'pages/about'
  # get 'pages/contact'
  # get 'about', to: 'pages#about'
  get 'about-me', to: 'pages#about'
  # get 'contact-', to: 'pages#contact'
  get 'contact-me-to-work', to: 'pages#contact'
  resources :blogs do
    resources :topics
    member do
      get :toggle_status
    end
  end

  root to: 'pages#home' # this will replace this code  # get 'pages/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
