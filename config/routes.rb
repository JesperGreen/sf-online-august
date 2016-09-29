Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  get '/restaurant', controller: :restaurant, action: :index

  resources :menu, only: [:index, :create, :new]
  resources :dishes, only: [:new, :show, :create]

end
