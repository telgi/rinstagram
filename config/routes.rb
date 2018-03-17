Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'
  get 'sessions', to: 'sessions#new'
end
