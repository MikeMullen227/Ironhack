Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#show action

#root :to=> 'users#home'
#resources :users do 
#  resources :products
#end
#resources :product
  # get 'home_page/index'

  get "/", to: "products#index"

  # User actions
  get "/users/new", to: "users#new"
  get "/users/:id", to: "users#show", as: :user
  get "/users", to: "users#index"
  post "/users", to: "users#create"

  # Product actions
  get "/users/:user_id/products/:id", to: "products#show", as: :user_products_show
  get "/users/:user_id/products/new", to: "products#new"
  post "/users/:user_id/products", to: "products#create", as: :user_products

  #bid actions
  get "/users/:user_id/products/:id/bids", to: "bids#create"
end


