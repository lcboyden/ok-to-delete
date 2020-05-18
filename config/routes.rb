Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/show'
  get 'pages/new'
  resources :pages
  resources :users
  
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
