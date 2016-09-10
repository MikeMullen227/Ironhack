Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get '/', to: "users#home"

    get '/users', to: 'users#create'

    get '/products', to: 'products#index'

    get '/products/new', to: 'products#new'

    get '/products/:id', to: 'products#show'

    post '/products/new', to: 'products#create'



 #    get '/product', to: 'product#create'

	# get '/product', to: 'product#index'
	
	# get '/product/new', to: 'product#new'

	# get '/product/:id', to: 'product#show'
end
