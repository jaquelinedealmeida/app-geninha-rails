Rails.application.routes.draw do
  root "sessions#index"

  resources :sessions do
    resources :participants
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
