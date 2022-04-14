Rails.application.routes.draw do
  resources :words
  root "flash_cards#index"
end
