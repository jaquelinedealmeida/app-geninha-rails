Rails.application.routes.draw do
  root "sessions#index"

  get "/sessions",  to: "sessions#index"
  get "/sessions/:id", to: "sessions#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
