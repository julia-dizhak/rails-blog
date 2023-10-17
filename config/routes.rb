Rails.application.routes.draw do
  get 'say/hello'
  get 'say/goodbye'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # get "/articles/new", to: "articles#new"
  # get "/articles/:id", to: "articles#show"
  # patch "/articles/:id", to: "articles#update"
  # delete "/articles/:id", to: "articles#destroy"

  # get "/articles/:id/edit", to: "articles#edit"
  # post "/articles", to: "articles#create"

  # get "/articles", to: "articles#index"
  # Defines the root path route ("/")

  resources :articles do
    resources :comments
  end
  
  root "articles#index"

end
