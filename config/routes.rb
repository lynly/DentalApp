Rails.application.routes.draw do

  resources :doctors, :services

  root :to => 'sessions#new'             # Replace this with whatever you want your root_path to be.
                                        # This path is where unauthorized users will be redirected_to.
  get '/login' => 'sessions#new'         # This will be our sign-in page.
  post '/login' => 'sessions#create'     # This will be the path to which the sign-in form is posted
  delete '/login' => 'sessions#destroy'  # This will be the path users use to log-out.

  get '/signup' => 'doctors#new'
  post '/doctors' => 'doctors#create'

end
