Rails.application.routes.draw do
  #get 'articulos/new'
  #get 'articulos/index'
  
  resources :articulos

  get 'estaticas/contacto'
  get 'estaticas/nosotros'
  
  get 'home/index'
  root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
