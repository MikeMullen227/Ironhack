Rails.application.routes.draw do
  devise_for :users
  resources :ingredients, except: [:new, :edit]
  resources :sandwiches, except: [:new, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post("/sandwiches/:id/ingredients/add", :to => "sandwiches#add_ingredient")

  root "sites#home"

end
