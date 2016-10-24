Rails.application.routes.draw do

	root 'welcome#index'

	resources :users

  get "/login", to: "sessions#new", as: "login"
  post "/sessions", to: "sessions#create"
  get "/sign_up", to: "users#new", as: "sign_up"
  get 'users/new'
  get 'users/create'
  get 'users/show'
  delete '/sessions', to: "sessions#destroy", as: "logout"

  

end
