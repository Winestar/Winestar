Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

	# config/routes.rb
	mount Judge::Engine => '/judge'

	# root routes
	root 'splash#new'

	get '/likes' => 'likes#new'
	
 	#form to create new trip
 	get '/trips' => 'trips#new'

 	# creates new user in db
 	get 'trips/create'


 	#show current user
 	get 'trips/show'

	#users routes home
	get "/signup", to: "users#edit"

		# Sesions routes
	get "/login", to: "sessions#new"
	post "/logout", to: "sessions#destroy"
	resources :sessions, only: [:create]

	resources :users
	resources :likes, only: [:create]
	resources :trips, only: [:create]




end
