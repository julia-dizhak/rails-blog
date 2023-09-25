Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :articles
  # get "/articles/new", to: "articles#new"
  # get "/articles/:id", to: "articles#show"
  # patch "/articles/:id", to: "articles#update"
  # delete "/articles/:id", to: "articles#destroy"

  # get "/articles/:id/edit", to: "articles#edit"
  # post "/articles", to: "articles#create"

  # get "/articles", to: "articles#index"
  # Defines the root path route ("/")
  root "articles#index"

  
end
