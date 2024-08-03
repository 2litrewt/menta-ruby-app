Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get 'generate/controller'
  get 'generate/tops'
  get 'generate/new'
  root :to => "tops#index"
  resources :users, only: [:new]
  resources :sessions, only: [:new]
end
