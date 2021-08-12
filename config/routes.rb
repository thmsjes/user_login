Rails.application.routes.draw do
  resources :users
  root 'pages#home'
  get 'login', to:'pages#login'
  get 'home', to: 'pages#home'
end
