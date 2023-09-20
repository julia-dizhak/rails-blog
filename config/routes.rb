Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/articles", to: "articles#index"
  get "/articles/new", to: "articles#new"
  get "/articles/:id", to: "articles#show"

  post "/articles", to: "articles#create"

  # Defines the root path route ("/")
  root "articles#index"

  resources :articles
end
