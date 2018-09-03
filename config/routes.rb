Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # crear todas las rutas para books
  resources :books
  
  #resources :authors
  # crear todas menos 
  #resources :books, except: [:destroy, :create]
  # crear unicamente
  #resources :books, only: [:destroy, :create]
  #with_options only: [:destroy, :create] do |list_only|
      #list_only.resources:books
      #list_only.resources:authors
  #end
  #resources :comments, constraints:{subdomain: 'api'} 
end
