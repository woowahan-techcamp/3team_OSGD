Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :recipes
  resources :products
  resources :materials
  get '/get_products/:id', to: 'recipes#get_products'
  get '/season', to: 'recipes#season'
  post '/search_recipe', to: 'recipes#search'
  post '/search_product', to: 'products#search'
  post '/search_material', to: 'materials#search'
  post '/get_products', to: 'products#get_products'
  post '/get_materials', to: 'materials#get_materials'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end