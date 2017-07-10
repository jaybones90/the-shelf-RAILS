Rails.application.routes.draw do
  root to: "pages#home"

  devise_for :users
  resources :products
  resources :order_items
end
