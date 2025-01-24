Rails.application.routes.draw do
  resources :clients
  resources :cars
  resources :rents

  root "pages#home"
  get "/error", to: "errors#index"

end
