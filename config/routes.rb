Rails.application.routes.draw do
  devise_for :users
  resources :phrases
  resources :answers, only: :create
  root "flash_cards#index"
end
