Rails.application.routes.draw do
  devise_for :users
  #resources :comentarios
  resources :autors
  #get 'articulos/new'
  #get 'articulos/index'
  
  resources :articulos do
    resources :comentarios
  end

  get 'estaticas/contacto'
  get 'estaticas/nosotros'
  
  get 'home/index'
  root "home#index"

  get '*path' => redirect('/')
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
