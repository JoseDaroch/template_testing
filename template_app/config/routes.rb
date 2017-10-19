Rails.application.routes.draw do

  root "pages#index"

  get    '/signup',  to:'users#new'

  get    '/login',   to: 'sessions#new' # Page
  post   '/login',   to: 'sessions#create' # Create a session
  delete '/logout',  to: 'sessions#destroy' # Delete current session

  resources :users
  resources :artists
  resources :albums
  resources :songs

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
