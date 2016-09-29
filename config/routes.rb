Rails.application.routes.draw do
  devise_for :users
  get '/restaurant', controller: :restaurant, action: :index

  resources :dishes, only: [:new, :show, :create]

  get '/menu', controller: :menu, action: :index

  root to: 'restaurant#index'

end
