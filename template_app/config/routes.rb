Rails.application.routes.draw do


  get '/signup', to:'user#new'

  get '/song', to: 'pages#song'
  get '/artist', to: 'pages#artist'
  get '/album', to: 'pages#album'

  root "pages#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
