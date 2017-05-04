Rails.application.routes.draw do
  root :to => 'sessions#new'
  resources :doctors, :services

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'doctors#new'
  post '/doctors' => 'doctors#create'


end
