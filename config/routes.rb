Rails.application.routes.draw do
  devise_for :users
  resources :phrases
  resources :answers, only: :create
  get "/about", to: "static_pages#about"
  root "flash_cards#index"
end
