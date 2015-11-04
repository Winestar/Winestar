Rails.application.routes.draw do
  


# root routes
root 'site#index'

 #users routes homie
 get "/signup", to: "users#new"
 resources :users, only: [:create]

end
