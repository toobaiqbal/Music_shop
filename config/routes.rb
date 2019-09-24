Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :instruments
  get 'store/index'
  devise_for :users, controller: {
      registrations: "registrations"
  }
  root to: "instruments#index"

end
