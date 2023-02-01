Rails.application.routes.draw do
  get 'users/index'
  devise_for :users
  root to: "pages#mydimension"

  get '/patrykpysiak', to: 'pages#patrykpysiak'

  get '/norsk', to: 'pages#norsk'
  get '/norsksetninger', to: 'pages#norsksetninger'
  get '/norskadjectiv', to: 'pages#norskadjectiv'
  get '/norsksubstantiv', to: 'pages#norsksubstantiv'


 # Just a little page to list users route
  match '/users',   to: 'users#index',   via: 'get'

 # Below are dictionary routes

  get '/norskordbok', to: 'words#norskordbok', as: 'norskordbok'

  resources 'users' do
  resources 'words', only: [:show, :new, :create]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
