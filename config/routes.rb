Rails.application.routes.draw do
  resources :bills
  resources :goals
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get "/me", to: "users#show"
  post "/users", to: "users#create"
  patch "/goals", to: "goals#update"

  get "/authorized_user", to: "users#show"

    # route to test your configuration
    get '/hello', to: 'application#hello_world'
  # Defines the root path route ("/")
  # root "articles#index"
  # all
end
