Rails.application.routes.draw do
  root 'dashboard#index'
  get 'login', to: 'sessions#new', as: 'login'

  resources :users
  resources :sessions
  resources :thumbnails
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
