Rails.application.routes.draw do
  root "posts#index"
  resources :posts, only: [:index, :new, :create]
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  delete 'logout', to: 'sessions#destroy', as: :logout
end
