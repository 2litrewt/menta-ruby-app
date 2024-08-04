Rails.application.routes.draw do
  get '/login', to: 'session#new'
  root to: 'tops#index'
  resources :users,only: [:new]
  resources :sessions,only: [:new, :create]
end
