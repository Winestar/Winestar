Rails.application.routes.draw do
  

  #form to create new trip
  get '/trips' => 'trips#new'

  # creates new user in db
  get 'trips/create'

  #show current user
  get 'trips/show'


# root routes
root 'likes#new'

#users routes homie
get "/signup", to: "users#new"
resources :users, only: [:create]
resources :likes, only: [:create]
resources :trips

 

end
