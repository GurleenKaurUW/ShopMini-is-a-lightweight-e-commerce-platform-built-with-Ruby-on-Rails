# config/routes.rb (sample)
Rails.application.routes.draw do
  devise_for :users
  root "products#index"

  resources :products
  resource  :cart, only: :show
  resources :cart_items, only: [:create, :update, :destroy]
  resources :orders, only: [:index, :show, :create]
end
