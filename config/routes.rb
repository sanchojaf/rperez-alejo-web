TravelDemo::Application.routes.draw do
  get "hotels/index"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end