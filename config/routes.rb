Rails.application.routes.draw do
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  get "/authorized_user", to: "users#show"

    # route to test your configuration
    get '/hello', to: 'application#hello_world'
  # Defines the root path route ("/")
  # root "articles#index"
  # all
end
