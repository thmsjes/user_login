Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registrations, only: [:create, :index, :new, :edit, :update ]
  resources :users
  get :logout, to: "sessions#logout"
  get :logged_in, to:"sessions#logged_in"
  root 'pages#home'
  get 'login', to:'pages#login'
  get 'home', to: 'pages#home'
  post 'login', to: 'sessions#create'
  get 'main', to: 'pages#main'
  
end
 