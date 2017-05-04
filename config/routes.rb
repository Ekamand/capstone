Rails.application.routes.draw do

  resources :users
	  get "/index" => "posts#index"
	  patch "/posts/:id" => "posts#update"
	  delete "/posts/:id" => "posts#destroy"

	  get  "/posts/:id/edit" => "posts#edit" 

	  get "/posts/new" => "posts#new"
	  post "/posts" => "posts#create"
	  
	  get "/posts/:id" => "posts#show"
	  get "/signup" => "users#new"
	  
	  get "/login" => "sessions#new"
	  post "/login" => "sessions#create"

    #search
    post "/search" => "posts#search"
    get "/search" => "posts#search"

      #logout
  get "/logout" => "sessions#destroy"

  #favorites
  get "/favorites" => "favorites#index"
  post "/favorites" => "favorites#create"
  delete "/favorites/:id" => "favorites#destroy"

  post "/comments" => "comments#create"




end
