Rails.application.routes.draw do

  get    '/login',   to: 'sessions#new' # Page
  post   '/login',   to: 'sessions#create' # Create a session
  delete '/logout',  to: 'sessions#destroy' # Delete current session

  resources :users

  get '/signup', to:'users#new'

  root "pages#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
