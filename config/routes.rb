Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get 'generate/controller'
  get 'generate/tops'
  get 'generate/new'
  root :to => "tops#index"
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create]
end
