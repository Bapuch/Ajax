Rails.application.routes.draw do
  get 'email/index'
  devise_for :users
  root to: "email#index"
  get "/home", to: "home#index"
  get "/show", to: "email#show"
  delete "/show", to: "email#destroy"
  resources :tasks, except: [:show]
end
