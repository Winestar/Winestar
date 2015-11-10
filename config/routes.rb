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

	post 'likes/:id/preference' => 'likes#preference'

	resources :users, only: [:create]
	resources :likes, only: [:create]
	resources :trips, only: [:create]
	resources :purchases
end

#################################################################
########### when in doubt, rake the routes! #####################
#################################################################
#  judge        /judge                          Judge::Engine
#          root GET    /                               likes#new
#         trips GET    /trips(.:format)                trips#new
#  trips_create GET    /trips/create(.:format)         trips#create
#    trips_show GET    /trips/show(.:format)           trips#show
#        signup GET    /signup(.:format)               users#new
#               POST   /likes/:id/preference(.:format) likes#preference
#         users POST   /users(.:format)                users#create
#         likes POST   /likes(.:format)                likes#create
#               POST   /trips(.:format)                trips#create
#     purchases GET    /purchases(.:format)            purchases#index
#               POST   /purchases(.:format)            purchases#create
#  new_purchase GET    /purchases/new(.:format)        purchases#new
# edit_purchase GET    /purchases/:id/edit(.:format)   purchases#edit
#      purchase GET    /purchases/:id(.:format)        purchases#show
#               PATCH  /purchases/:id(.:format)        purchases#update
#               PUT    /purchases/:id(.:format)        purchases#update
#               DELETE /purchases/:id(.:format)        purchases#destroy

#################################################################

