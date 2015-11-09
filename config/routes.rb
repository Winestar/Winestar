Rails.application.routes.draw do
	# config/routes.rb
	mount Judge::Engine => '/judge'

	# root routes
	root 'likes#new'
	
 	#form to create new trip
 	get '/trips' => 'trips#new'

 	# creates new user in db
 	get 'trips/create'

 	#show current user
 	get 'trips/show'

	#users routes home
	get "/signup", to: "users#new"

	resources :users, only: [:create]
	resources :likes, only: [:create]
	resources :trips, only: [:create]




end
