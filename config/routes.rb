Rails.application.routes.draw do
  

  #form to create new trip
  get 'trip/new' => 'trip#new'

  # creates new user in db
  get 'trip/create'

  #show current user
  get 'trip/show'


# root routes
root 'site#index'

resources :trips

 #users routes homie
 get "/signup", to: "users#new"
 resources :users, only: [:create]

end
