Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: "pages#home"

  get "/pages/:page" => "pages#about"

  devise_for :users


  resources :products

  resources :order_items

  resource :cart, only: [:show]

  resources :charges

end
