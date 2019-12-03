Rails.application.routes.draw do
  resources :products, only: [:index]
  # post '/items/:id/add_to_cart', to: 'application#add_to_cart', as: "add_to_cart"
  post '/add_to_cart', to: 'application#add_to_cart', as: "add_to_cart"
  get '/', to: 'products#index', as: 'homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
