Rails.application.routes.draw do
  resources :things, only: [:new, :create]
  root 'home#index'
end
