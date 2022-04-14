Rails.application.routes.draw do
  devise_for :users
  resources :words
  root "flash_cards#index"
end
