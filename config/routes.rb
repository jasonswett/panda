Rails.application.routes.draw do
  devise_for :users
  resources :phrases
  root "flash_cards#index"
end
