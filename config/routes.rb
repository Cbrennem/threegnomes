Rails.application.routes.draw do
  
  root 'static_pages#home'

  resources :users

  get '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  get '/home',    to: 'static_pages#home'
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/yui',     to: 'static_pages#yui'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



end
