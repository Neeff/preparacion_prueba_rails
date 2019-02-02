Rails.application.routes.draw do
  get 'products', to: 'products#index'
  get 'products/favourites', to: 'products#favourites' , as: 'favourites'
  post 'products', to: 'products#create'
  get 'products/:id', to: 'products#show', as: 'product'
  get 'products/:id/edit', to: 'products#edit', as: 'edit_product'
  patch 'products/:id', to: 'products#update', as: 'update_product'
  patch 'products/:id/set_favourite', to: 'products#set_favourite',as: 'set_favourite'

  resources :products, only:[:create,:destroy]
  root 'products#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
