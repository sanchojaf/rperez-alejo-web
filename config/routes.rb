TravelDemo::Application.routes.draw do
  get "cars/index"

  get "flights/index"

  get "hotels/index"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end