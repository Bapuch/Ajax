Rails.application.routes.draw do
  get 'email/index'
  devise_for :users
  root to: "email#index"
  get "/home", to: "home#index"
  get "/show", to: "email#show"
  delete "/show", to: "email#destroy"
  resources :tasks, except: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
