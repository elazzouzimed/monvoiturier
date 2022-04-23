Rails.application.routes.draw do
  devise_for :drivers
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show, :update, :new]
  resources :cars, only: [:index, :new, :create, :show, :update, :destroy]
  resources :bookings, only: [:create, :update, :destroy]
  resources :drivers, only: [:new, :create, :show, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
