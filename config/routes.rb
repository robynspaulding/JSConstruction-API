Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #Users Routes
  post "/users" => "users#create"

  #Sessions
  post "/sessions" => "sessions#create"

  #About routes
  get "/abouts" => "abouts#index"
  post "/abouts" => "abouts#create"
  get "/abouts/:id" => "abouts#show"
  patch "abouts/:id" => "abouts#update"
  delete "abouts/:id" => "abouts#destroy"
end
