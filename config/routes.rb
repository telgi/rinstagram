Rails.application.routes.draw do
  resources :users
  resources :sessions

  root 'users#index'
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'
end
